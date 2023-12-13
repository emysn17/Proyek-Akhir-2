import 'package:dartz/dartz.dart';
import 'package:nsfutsal/features/lapangan_detail/data/models/dropped_file_model.dart';
import 'package:nsfutsal/features/lapangan_detail/domain/entities/booking_lapangan_entity.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../repository/lapangan_detail_repository.dart';

class BookingLapanganUseCase {
  Future<Either<Failure, String>> bookingLapangan(
      {required BookingLapanganEntity bookingLapanganEntity,
      DroppedFile? droppedFile}) async {
    return serviceLocator<LapanganDetailRepository>().bookingLapangan(
        bookingLapanganEntity: bookingLapanganEntity, droppedFile: droppedFile);
  }
}
