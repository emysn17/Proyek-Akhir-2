// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;

import '../features/booking_lapangan/presentation/screens/booking_lapangan_screen.dart'
    as _i16;
import '../features/cart/presentation/screens/cart_screen.dart' as _i11;
import '../features/checkout/data/models/order/order_model.dart' as _i24;
import '../features/checkout/presentation/screens/checkout_screen.dart' as _i12;
import '../features/checkout/presentation/screens/checkout_success_screen.dart'
    as _i13;
import '../features/credit/data/models/credit/credit_model.dart' as _i22;
import '../features/credit/data/models/order/order_model.dart' as _i23;
import '../features/credit/presentation/screens/credit_checkout_screen.dart'
    as _i7;
import '../features/credit/presentation/screens/credit_checkout_success_screen.dart'
    as _i8;
import '../features/credit/presentation/screens/credit_screen.dart' as _i6;
import '../features/event/presentation/screens/event_screen.dart' as _i17;
import '../features/guest/home_guest/presentation/screens/home_guest_screen.dart'
    as _i19;
import '../features/guest/lapangan_guest/presentation/screen/lapangan_guest_screen.dart'
    as _i18;
import '../features/home/presentation/screens/home_screen.dart' as _i4;
import '../features/lapangan/presentation/screen/lapangan_screen.dart' as _i9;
import '../features/lapangan_detail/presentation/screens/lapangan_detail_screen.dart'
    as _i10;
import '../features/login/presentation/screens/login_screen.dart' as _i2;
import '../features/order/presentation/screens/order_screen.dart' as _i15;
import '../features/product_detail/presentation/screens/product_detail_screen.dart'
    as _i5;
import '../features/profile/presentation/screens/profile_screen.dart' as _i14;
import '../features/register/presentation/screens/register_screen.dart' as _i3;
import '../features/splash/presentation/splash_screen.dart' as _i1;

class FlutterRouter extends _i20.RootStackRouter {
  FlutterRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    RegisterScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i3.RegisterScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    ProductDetailScreen.name: (routeData) {
      final args = routeData.argsAs<ProductDetailScreenArgs>();
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: _i5.ProductDetailScreen(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    CreditScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i6.CreditScreen(),
      );
    },
    CreditCheckoutScreen.name: (routeData) {
      final args = routeData.argsAs<CreditCheckoutScreenArgs>();
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: _i7.CreditCheckoutScreen(
          args.credit,
          key: args.key,
        ),
      );
    },
    CreditCheckoutSuccessScreen.name: (routeData) {
      final args = routeData.argsAs<CreditCheckoutSuccessScreenArgs>();
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: _i8.CreditCheckoutSuccessScreen(
          key: args.key,
          order: args.order,
        ),
      );
    },
    LapanganScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i9.LapanganScreen(),
      );
    },
    LapanganDetailScreen.name: (routeData) {
      final args = routeData.argsAs<LapanganDetailScreenArgs>();
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: _i10.LapanganDetailScreen(
          key: args.key,
          lapanganId: args.lapanganId,
        ),
      );
    },
    CartScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i11.CartScreen(),
      );
    },
    CheckoutScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i12.CheckoutScreen(),
      );
    },
    CheckoutSuccessScreen.name: (routeData) {
      final args = routeData.argsAs<CheckoutSuccessScreenArgs>();
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: _i13.CheckoutSuccessScreen(
          key: args.key,
          order: args.order,
        ),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
    OrderScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i15.OrderScreen(),
      );
    },
    BookingLapanganScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i16.BookingLapanganScreen(),
      );
    },
    EventScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i17.EventScreen(),
      );
    },
    LapanganGuestScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i18.LapanganGuestScreen(),
      );
    },
    HomeGuestScreen.name: (routeData) {
      return _i20.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i19.HomeGuestScreen(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i20.RouteConfig(
          LoginScreen.name,
          path: '/login',
        ),
        _i20.RouteConfig(
          RegisterScreen.name,
          path: '/register',
        ),
        _i20.RouteConfig(
          HomeScreen.name,
          path: '/home',
        ),
        _i20.RouteConfig(
          ProductDetailScreen.name,
          path: '/product-detail',
        ),
        _i20.RouteConfig(
          CreditScreen.name,
          path: '/credit',
        ),
        _i20.RouteConfig(
          CreditCheckoutScreen.name,
          path: '/credit/checkout',
        ),
        _i20.RouteConfig(
          CreditCheckoutSuccessScreen.name,
          path: '/credit/checkout/success',
        ),
        _i20.RouteConfig(
          LapanganScreen.name,
          path: '/lapangan',
        ),
        _i20.RouteConfig(
          LapanganDetailScreen.name,
          path: '/lapangan-detail',
        ),
        _i20.RouteConfig(
          CartScreen.name,
          path: '/cart',
        ),
        _i20.RouteConfig(
          CheckoutScreen.name,
          path: '/checkout',
        ),
        _i20.RouteConfig(
          CheckoutSuccessScreen.name,
          path: '/checkout-success',
        ),
        _i20.RouteConfig(
          ProfileScreen.name,
          path: '/profile',
        ),
        _i20.RouteConfig(
          OrderScreen.name,
          path: '/order',
        ),
        _i20.RouteConfig(
          BookingLapanganScreen.name,
          path: '/Booking-lapangan',
        ),
        _i20.RouteConfig(
          EventScreen.name,
          path: '/event',
        ),
        _i20.RouteConfig(
          EventScreen.name,
          path: '/event',
        ),
        _i20.RouteConfig(
          LapanganGuestScreen.name,
          path: '/lapangan_guest',
        ),
        _i20.RouteConfig(
          HomeGuestScreen.name,
          path: '/home_guest',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i20.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i20.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterScreen extends _i20.PageRouteInfo<void> {
  const RegisterScreen()
      : super(
          RegisterScreen.name,
          path: '/register',
        );

  static const String name = 'RegisterScreen';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i20.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i5.ProductDetailScreen]
class ProductDetailScreen extends _i20.PageRouteInfo<ProductDetailScreenArgs> {
  ProductDetailScreen({
    _i21.Key? key,
    required int productId,
  }) : super(
          ProductDetailScreen.name,
          path: '/product-detail',
          args: ProductDetailScreenArgs(
            key: key,
            productId: productId,
          ),
        );

  static const String name = 'ProductDetailScreen';
}

class ProductDetailScreenArgs {
  const ProductDetailScreenArgs({
    this.key,
    required this.productId,
  });

  final _i21.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailScreenArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i6.CreditScreen]
class CreditScreen extends _i20.PageRouteInfo<void> {
  const CreditScreen()
      : super(
          CreditScreen.name,
          path: '/credit',
        );

  static const String name = 'CreditScreen';
}

/// generated route for
/// [_i7.CreditCheckoutScreen]
class CreditCheckoutScreen
    extends _i20.PageRouteInfo<CreditCheckoutScreenArgs> {
  CreditCheckoutScreen({
    required _i22.Credit credit,
    _i21.Key? key,
  }) : super(
          CreditCheckoutScreen.name,
          path: '/credit/checkout',
          args: CreditCheckoutScreenArgs(
            credit: credit,
            key: key,
          ),
        );

  static const String name = 'CreditCheckoutScreen';
}

class CreditCheckoutScreenArgs {
  const CreditCheckoutScreenArgs({
    required this.credit,
    this.key,
  });

  final _i22.Credit credit;

  final _i21.Key? key;

  @override
  String toString() {
    return 'CreditCheckoutScreenArgs{credit: $credit, key: $key}';
  }
}

/// generated route for
/// [_i8.CreditCheckoutSuccessScreen]
class CreditCheckoutSuccessScreen
    extends _i20.PageRouteInfo<CreditCheckoutSuccessScreenArgs> {
  CreditCheckoutSuccessScreen({
    _i21.Key? key,
    required _i23.OrderModel order,
  }) : super(
          CreditCheckoutSuccessScreen.name,
          path: '/credit/checkout/success',
          args: CreditCheckoutSuccessScreenArgs(
            key: key,
            order: order,
          ),
        );

  static const String name = 'CreditCheckoutSuccessScreen';
}

class CreditCheckoutSuccessScreenArgs {
  const CreditCheckoutSuccessScreenArgs({
    this.key,
    required this.order,
  });

  final _i21.Key? key;

  final _i23.OrderModel order;

  @override
  String toString() {
    return 'CreditCheckoutSuccessScreenArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i9.LapanganScreen]
class LapanganScreen extends _i20.PageRouteInfo<void> {
  const LapanganScreen()
      : super(
          LapanganScreen.name,
          path: '/lapangan',
        );

  static const String name = 'LapanganScreen';
}

/// generated route for
/// [_i10.LapanganDetailScreen]
class LapanganDetailScreen
    extends _i20.PageRouteInfo<LapanganDetailScreenArgs> {
  LapanganDetailScreen({
    _i21.Key? key,
    required int lapanganId,
  }) : super(
          LapanganDetailScreen.name,
          path: '/lapangan-detail',
          args: LapanganDetailScreenArgs(
            key: key,
            lapanganId: lapanganId,
          ),
        );

  static const String name = 'LapanganDetailScreen';
}

class LapanganDetailScreenArgs {
  const LapanganDetailScreenArgs({
    this.key,
    required this.lapanganId,
  });

  final _i21.Key? key;

  final int lapanganId;

  @override
  String toString() {
    return 'LapanganDetailScreenArgs{key: $key, lapanganId: $lapanganId}';
  }
}

/// generated route for
/// [_i11.CartScreen]
class CartScreen extends _i20.PageRouteInfo<void> {
  const CartScreen()
      : super(
          CartScreen.name,
          path: '/cart',
        );

  static const String name = 'CartScreen';
}

/// generated route for
/// [_i12.CheckoutScreen]
class CheckoutScreen extends _i20.PageRouteInfo<void> {
  const CheckoutScreen()
      : super(
          CheckoutScreen.name,
          path: '/checkout',
        );

  static const String name = 'CheckoutScreen';
}

/// generated route for
/// [_i13.CheckoutSuccessScreen]
class CheckoutSuccessScreen
    extends _i20.PageRouteInfo<CheckoutSuccessScreenArgs> {
  CheckoutSuccessScreen({
    _i21.Key? key,
    required _i24.OrderModel order,
  }) : super(
          CheckoutSuccessScreen.name,
          path: '/checkout-success',
          args: CheckoutSuccessScreenArgs(
            key: key,
            order: order,
          ),
        );

  static const String name = 'CheckoutSuccessScreen';
}

class CheckoutSuccessScreenArgs {
  const CheckoutSuccessScreenArgs({
    this.key,
    required this.order,
  });

  final _i21.Key? key;

  final _i24.OrderModel order;

  @override
  String toString() {
    return 'CheckoutSuccessScreenArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileScreen extends _i20.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: '/profile',
        );

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i15.OrderScreen]
class OrderScreen extends _i20.PageRouteInfo<void> {
  const OrderScreen()
      : super(
          OrderScreen.name,
          path: '/order',
        );

  static const String name = 'OrderScreen';
}

/// generated route for
/// [_i16.BookingLapanganScreen]
class BookingLapanganScreen extends _i20.PageRouteInfo<void> {
  const BookingLapanganScreen()
      : super(
          BookingLapanganScreen.name,
          path: '/Booking-lapangan',
        );

  static const String name = 'BookingLapanganScreen';
}

/// generated route for
/// [_i17.EventScreen]
class EventScreen extends _i20.PageRouteInfo<void> {
  const EventScreen()
      : super(
          EventScreen.name,
          path: '/event',
        );

  static const String name = 'EventScreen';
}

/// generated route for
/// [_i18.LapanganGuestScreen]
class LapanganGuestScreen extends _i20.PageRouteInfo<void> {
  const LapanganGuestScreen()
      : super(
          LapanganGuestScreen.name,
          path: '/lapangan_guest',
        );

  static const String name = 'LapanganGuestScreen';
}

/// generated route for
/// [_i19.HomeGuestScreen]
class HomeGuestScreen extends _i20.PageRouteInfo<void> {
  const HomeGuestScreen()
      : super(
          HomeGuestScreen.name,
          path: '/home_guest',
        );

  static const String name = 'HomeGuestScreen';
}
