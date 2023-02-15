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
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/auth/presentation/pages/register_shop/register_shop_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/base/presentation/pages/brands/brands_imports.dart'
    as _i21;
import 'package:flutter_tdd/features/base/presentation/pages/category_details/category_details_imports.dart'
    as _i23;
import 'package:flutter_tdd/features/base/presentation/pages/compare/compare_imports.dart'
    as _i18;
import 'package:flutter_tdd/features/base/presentation/pages/conversations/conversations_imports.dart'
    as _i15;
import 'package:flutter_tdd/features/base/presentation/pages/dashboard/dashboard_imports.dart'
    as _i11;
import 'package:flutter_tdd/features/base/presentation/pages/deal_of_the_day/deal_of_the_day_imports.dart'
    as _i20;
import 'package:flutter_tdd/features/base/presentation/pages/delivery/delivery_imports.dart'
    as _i25;
import 'package:flutter_tdd/features/base/presentation/pages/downloads/downloads_import.dart'
    as _i12;
import 'package:flutter_tdd/features/base/presentation/pages/flash_sale/flash_imports.dart'
    as _i19;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/base/presentation/pages/home/tabs/cart/cart_imports.dart'
    as _i22;
import 'package:flutter_tdd/features/base/presentation/pages/my_wallet/my_wallet_imports.dart'
    as _i16;
import 'package:flutter_tdd/features/base/presentation/pages/payment/payment_imports.dart'
    as _i26;
import 'package:flutter_tdd/features/base/presentation/pages/product_details/product_details_imports.dart'
    as _i27;
import 'package:flutter_tdd/features/base/presentation/pages/profile/profile_imports.dart'
    as _i10;
import 'package:flutter_tdd/features/base/presentation/pages/purchased_history/purchased_history_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/base/presentation/pages/shipping/shipping_imports.dart'
    as _i24;
import 'package:flutter_tdd/features/base/presentation/pages/support_tickets/support_tickets_imports.dart'
    as _i17;
import 'package:flutter_tdd/features/base/presentation/pages/wishlist/wishlist_imports.dart'
    as _i14;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i8;

class AppRouter extends _i28.RootStackRouter {
  AppRouter([_i29.GlobalKey<_i29.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
        opaque: true,
      );
    },
    LoginRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Login(),
        opaque: true,
      );
    },
    ActiveAccountRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ActiveAccount(),
        opaque: true,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.ResetPassword(),
        opaque: true,
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPassword(),
        opaque: true,
      );
    },
    RegisterRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.Register(),
        opaque: true,
      );
    },
    RegisterShopRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterShop(),
        opaque: true,
      );
    },
    TermsRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.Terms(),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i9.Home(
          key: args.key,
          index: args.index,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.Profile(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.DashBoard(),
      );
    },
    DownloadsRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.Downloads(),
      );
    },
    PurchasedHistoryRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.PurchasedHistory(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.Wishlist(),
      );
    },
    ConversationsRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.Conversations(),
      );
    },
    MyWalletRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.MyWallet(),
      );
    },
    SupportTicketsRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.SupportTickets(),
      );
    },
    CompareRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.Compare(),
      );
    },
    FlashSaleRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i19.FlashSale(),
      );
    },
    DealOfTheDayRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i20.DealOfTheDay(),
      );
    },
    BrandsRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i21.Brands(),
      );
    },
    CartRoute.name: (routeData) {
      return _i28.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i22.Cart(),
        transitionsBuilder: _i28.TransitionsBuilders.zoomIn,
        durationInMilliseconds: 800,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CategoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailsRouteArgs>();
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i23.CategoryDetails(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ShippingRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i24.Shipping(),
      );
    },
    DeliveryRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i25.Delivery(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i26.Payment(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      return _i28.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i27.ProductDetails(),
      );
    },
  };

  @override
  List<_i28.RouteConfig> get routes => [
        _i28.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i28.RouteConfig(
          LoginRoute.name,
          path: '/Login',
        ),
        _i28.RouteConfig(
          ActiveAccountRoute.name,
          path: '/active-account',
        ),
        _i28.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password',
        ),
        _i28.RouteConfig(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        ),
        _i28.RouteConfig(
          RegisterRoute.name,
          path: '/Register',
        ),
        _i28.RouteConfig(
          RegisterShopRoute.name,
          path: '/register-shop',
        ),
        _i28.RouteConfig(
          TermsRoute.name,
          path: '/Terms',
        ),
        _i28.RouteConfig(
          HomeRoute.name,
          path: '/Home',
        ),
        _i28.RouteConfig(
          ProfileRoute.name,
          path: '/Profile',
        ),
        _i28.RouteConfig(
          DashBoardRoute.name,
          path: '/dash-board',
        ),
        _i28.RouteConfig(
          DownloadsRoute.name,
          path: '/Downloads',
        ),
        _i28.RouteConfig(
          PurchasedHistoryRoute.name,
          path: '/purchased-history',
        ),
        _i28.RouteConfig(
          WishlistRoute.name,
          path: '/Wishlist',
        ),
        _i28.RouteConfig(
          ConversationsRoute.name,
          path: '/Conversations',
        ),
        _i28.RouteConfig(
          MyWalletRoute.name,
          path: '/my-wallet',
        ),
        _i28.RouteConfig(
          SupportTicketsRoute.name,
          path: '/support-tickets',
        ),
        _i28.RouteConfig(
          CompareRoute.name,
          path: '/Compare',
        ),
        _i28.RouteConfig(
          FlashSaleRoute.name,
          path: '/flash-sale',
        ),
        _i28.RouteConfig(
          DealOfTheDayRoute.name,
          path: '/deal-of-the-day',
        ),
        _i28.RouteConfig(
          BrandsRoute.name,
          path: '/Brands',
        ),
        _i28.RouteConfig(
          CartRoute.name,
          path: '/Cart',
        ),
        _i28.RouteConfig(
          CategoryDetailsRoute.name,
          path: '/category-details',
        ),
        _i28.RouteConfig(
          ShippingRoute.name,
          path: '/Shipping',
        ),
        _i28.RouteConfig(
          DeliveryRoute.name,
          path: '/Delivery',
        ),
        _i28.RouteConfig(
          PaymentRoute.name,
          path: '/Payment',
        ),
        _i28.RouteConfig(
          ProductDetailsRoute.name,
          path: '/product-details',
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i28.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/Login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ActiveAccount]
class ActiveAccountRoute extends _i28.PageRouteInfo<void> {
  const ActiveAccountRoute()
      : super(
          ActiveAccountRoute.name,
          path: '/active-account',
        );

  static const String name = 'ActiveAccountRoute';
}

/// generated route for
/// [_i4.ResetPassword]
class ResetPasswordRoute extends _i28.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i5.ForgetPassword]
class ForgetPasswordRoute extends _i28.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        );

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i6.Register]
class RegisterRoute extends _i28.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/Register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i7.RegisterShop]
class RegisterShopRoute extends _i28.PageRouteInfo<void> {
  const RegisterShopRoute()
      : super(
          RegisterShopRoute.name,
          path: '/register-shop',
        );

  static const String name = 'RegisterShopRoute';
}

/// generated route for
/// [_i8.Terms]
class TermsRoute extends _i28.PageRouteInfo<void> {
  const TermsRoute()
      : super(
          TermsRoute.name,
          path: '/Terms',
        );

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i9.Home]
class HomeRoute extends _i28.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i29.Key? key,
    required int index,
  }) : super(
          HomeRoute.name,
          path: '/Home',
          args: HomeRouteArgs(
            key: key,
            index: index,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.index,
  });

  final _i29.Key? key;

  final int index;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i10.Profile]
class ProfileRoute extends _i28.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/Profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i11.DashBoard]
class DashBoardRoute extends _i28.PageRouteInfo<void> {
  const DashBoardRoute()
      : super(
          DashBoardRoute.name,
          path: '/dash-board',
        );

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [_i12.Downloads]
class DownloadsRoute extends _i28.PageRouteInfo<void> {
  const DownloadsRoute()
      : super(
          DownloadsRoute.name,
          path: '/Downloads',
        );

  static const String name = 'DownloadsRoute';
}

/// generated route for
/// [_i13.PurchasedHistory]
class PurchasedHistoryRoute extends _i28.PageRouteInfo<void> {
  const PurchasedHistoryRoute()
      : super(
          PurchasedHistoryRoute.name,
          path: '/purchased-history',
        );

  static const String name = 'PurchasedHistoryRoute';
}

/// generated route for
/// [_i14.Wishlist]
class WishlistRoute extends _i28.PageRouteInfo<void> {
  const WishlistRoute()
      : super(
          WishlistRoute.name,
          path: '/Wishlist',
        );

  static const String name = 'WishlistRoute';
}

/// generated route for
/// [_i15.Conversations]
class ConversationsRoute extends _i28.PageRouteInfo<void> {
  const ConversationsRoute()
      : super(
          ConversationsRoute.name,
          path: '/Conversations',
        );

  static const String name = 'ConversationsRoute';
}

/// generated route for
/// [_i16.MyWallet]
class MyWalletRoute extends _i28.PageRouteInfo<void> {
  const MyWalletRoute()
      : super(
          MyWalletRoute.name,
          path: '/my-wallet',
        );

  static const String name = 'MyWalletRoute';
}

/// generated route for
/// [_i17.SupportTickets]
class SupportTicketsRoute extends _i28.PageRouteInfo<void> {
  const SupportTicketsRoute()
      : super(
          SupportTicketsRoute.name,
          path: '/support-tickets',
        );

  static const String name = 'SupportTicketsRoute';
}

/// generated route for
/// [_i18.Compare]
class CompareRoute extends _i28.PageRouteInfo<void> {
  const CompareRoute()
      : super(
          CompareRoute.name,
          path: '/Compare',
        );

  static const String name = 'CompareRoute';
}

/// generated route for
/// [_i19.FlashSale]
class FlashSaleRoute extends _i28.PageRouteInfo<void> {
  const FlashSaleRoute()
      : super(
          FlashSaleRoute.name,
          path: '/flash-sale',
        );

  static const String name = 'FlashSaleRoute';
}

/// generated route for
/// [_i20.DealOfTheDay]
class DealOfTheDayRoute extends _i28.PageRouteInfo<void> {
  const DealOfTheDayRoute()
      : super(
          DealOfTheDayRoute.name,
          path: '/deal-of-the-day',
        );

  static const String name = 'DealOfTheDayRoute';
}

/// generated route for
/// [_i21.Brands]
class BrandsRoute extends _i28.PageRouteInfo<void> {
  const BrandsRoute()
      : super(
          BrandsRoute.name,
          path: '/Brands',
        );

  static const String name = 'BrandsRoute';
}

/// generated route for
/// [_i22.Cart]
class CartRoute extends _i28.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/Cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i23.CategoryDetails]
class CategoryDetailsRoute
    extends _i28.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i29.Key? key,
    required String title,
  }) : super(
          CategoryDetailsRoute.name,
          path: '/category-details',
          args: CategoryDetailsRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'CategoryDetailsRoute';
}

class CategoryDetailsRouteArgs {
  const CategoryDetailsRouteArgs({
    this.key,
    required this.title,
  });

  final _i29.Key? key;

  final String title;

  @override
  String toString() {
    return 'CategoryDetailsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i24.Shipping]
class ShippingRoute extends _i28.PageRouteInfo<void> {
  const ShippingRoute()
      : super(
          ShippingRoute.name,
          path: '/Shipping',
        );

  static const String name = 'ShippingRoute';
}

/// generated route for
/// [_i25.Delivery]
class DeliveryRoute extends _i28.PageRouteInfo<void> {
  const DeliveryRoute()
      : super(
          DeliveryRoute.name,
          path: '/Delivery',
        );

  static const String name = 'DeliveryRoute';
}

/// generated route for
/// [_i26.Payment]
class PaymentRoute extends _i28.PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: '/Payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i27.ProductDetails]
class ProductDetailsRoute extends _i28.PageRouteInfo<void> {
  const ProductDetailsRoute()
      : super(
          ProductDetailsRoute.name,
          path: '/product-details',
        );

  static const String name = 'ProductDetailsRoute';
}
