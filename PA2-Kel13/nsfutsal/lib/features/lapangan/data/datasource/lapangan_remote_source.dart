import 'package:dartz/dartz.dart';
import 'package:nsfutsal/core/Request.dart';
import 'package:nsfutsal/core/service_locator.dart';

import '../../../../core/failure.dart';
import '../models/lapangan/lapangan_model.dart';

abstract class LapanganRemoteDataSource {
  Future<Either<Failure, LapanganList>> getLapangansFromServer();
}

class LapanganRemoteDataSourceImpl implements LapanganRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, LapanganList>> getLapangansFromServer() async {
    try {
      final response = await request.get('/lapangan');
      if (response.statusCode == 200) {
        LapanganList lapanganList = [];
        final lapanganListMap = response.data['data'];
        for (var lapangan in lapanganListMap) {
          try {
            lapanganList.add(Lapangan.fromJson(lapangan));
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
        }
        return Right(lapanganList);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}
