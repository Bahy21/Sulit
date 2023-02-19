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
import 'package:auto_route/auto_route.dart' as _i40;
import 'package:flutter/material.dart' as _i41;
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
import 'package:flutter_tdd/features/base/presentation/pages/add_new_address/add_new_address_imports.dart'
    as _i30;
import 'package:flutter_tdd/features/base/presentation/pages/addresses/addresses_imports.dart'
    as _i27;
import 'package:flutter_tdd/features/base/presentation/pages/brands/brands_imports.dart'
    as _i20;
import 'package:flutter_tdd/features/base/presentation/pages/category_details/category_details_imports.dart'
    as _i22;
import 'package:flutter_tdd/features/base/presentation/pages/compare/compare_imports.dart'
    as _i17;
import 'package:flutter_tdd/features/base/presentation/pages/conversations/conversations_imports.dart'
    as _i14;
import 'package:flutter_tdd/features/base/presentation/pages/dashboard/dashboard_imports.dart'
    as _i10;
import 'package:flutter_tdd/features/base/presentation/pages/deal_of_the_day/deal_of_the_day_imports.dart'
    as _i19;
import 'package:flutter_tdd/features/base/presentation/pages/delivery/delivery_imports.dart'
    as _i24;
import 'package:flutter_tdd/features/base/presentation/pages/downloads/downloads_import.dart'
    as _i11;
import 'package:flutter_tdd/features/base/presentation/pages/flash_sale/flash_imports.dart'
    as _i18;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/base/presentation/pages/home/tabs/cart/cart_imports.dart'
    as _i21;
import 'package:flutter_tdd/features/base/presentation/pages/my_wallet/my_wallet_imports.dart'
    as _i15;
import 'package:flutter_tdd/features/base/presentation/pages/order_summary/order_summary_imports.dart'
    as _i29;
import 'package:flutter_tdd/features/base/presentation/pages/payment/payment_imports.dart'
    as _i26;
import 'package:flutter_tdd/features/base/presentation/pages/product_details/product_details_imports.dart'
    as _i25;
import 'package:flutter_tdd/features/base/presentation/pages/profile/profile_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/base/presentation/pages/purchased_history/purchased_history_imports.dart'
    as _i12;
import 'package:flutter_tdd/features/base/presentation/pages/search/search_imports.dart'
    as _i31;
import 'package:flutter_tdd/features/base/presentation/pages/shipping/shipping_imports.dart'
    as _i23;
import 'package:flutter_tdd/features/base/presentation/pages/support_tickets/support_tickets_imports.dart'
    as _i16;
import 'package:flutter_tdd/features/base/presentation/pages/tickets_details/tickets_details_imports.dart'
    as _i28;
import 'package:flutter_tdd/features/base/presentation/pages/wishlist/wishlist_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/general/presentation/pages/contact_us/contact_us_imports.dart'
    as _i36;
import 'package:flutter_tdd/features/general/presentation/pages/privacy/privacy_imports.dart'
    as _i33;
import 'package:flutter_tdd/features/general/presentation/pages/return_policy/return_policy_import.dart'
    as _i34;
import 'package:flutter_tdd/features/general/presentation/pages/support_policy/support_policy_imports.dart'
    as _i35;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i32;
import 'package:flutter_tdd/features/seller/presentation/pages/seller_add_product/seller_add_product_imports.dart'
    as _i39;
import 'package:flutter_tdd/features/seller/presentation/pages/seller_dashboard/seller_dashboard_imports.dart'
    as _i37;
import 'package:flutter_tdd/features/seller/presentation/pages/seller_money_withdraw/seller_money_withdraw_imports.dart'
    as _i38;

class AppRouter extends _i40.RootStackRouter {
  AppRouter([_i41.GlobalKey<_i41.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i40.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
        opaque: true,
      );
    },
    LoginRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Login(),
        opaque: true,
      );
    },
    ActiveAccountRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ActiveAccount(),
        opaque: true,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.ResetPassword(),
        opaque: true,
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPassword(),
        opaque: true,
      );
    },
    RegisterRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.Register(),
        opaque: true,
      );
    },
    RegisterShopRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterShop(),
        opaque: true,
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.Home(
          key: args.key,
          index: args.index,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.Profile(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.DashBoard(),
      );
    },
    DownloadsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.Downloads(),
      );
    },
    PurchasedHistoryRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.PurchasedHistory(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.Wishlist(),
      );
    },
    ConversationsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.Conversations(),
      );
    },
    MyWalletRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.MyWallet(),
      );
    },
    SupportTicketsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.SupportTickets(),
      );
    },
    CompareRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.Compare(),
      );
    },
    FlashSaleRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.FlashSale(),
      );
    },
    DealOfTheDayRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i19.DealOfTheDay(),
      );
    },
    BrandsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i20.Brands(),
      );
    },
    CartRoute.name: (routeData) {
      return _i40.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i21.Cart(),
        transitionsBuilder: _i40.TransitionsBuilders.zoomIn,
        durationInMilliseconds: 800,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CategoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailsRouteArgs>();
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.CategoryDetails(
          key: args.key,
          title: args.title,
        ),
      );
    },
    ShippingRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i23.Shipping(),
      );
    },
    DeliveryRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i24.Delivery(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i25.ProductDetails(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i26.Payment(),
      );
    },
    AddressesRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i27.Addresses(),
      );
    },
    TicketsDetailsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i28.TicketsDetails(),
      );
    },
    OrderSummaryRoute.name: (routeData) {
      final args = routeData.argsAs<OrderSummaryRouteArgs>(
          orElse: () => const OrderSummaryRouteArgs());
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i29.OrderSummary(
          key: args.key,
          isTrackOrder: args.isTrackOrder,
        ),
      );
    },
    AddNewAddressRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i30.AddNewAddress(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i31.Search(),
      );
    },
    TermsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i32.Terms(),
      );
    },
    PrivacyRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i33.Privacy(),
      );
    },
    ReturnPolicyRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i34.ReturnPolicy(),
      );
    },
    SupportPolicyRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i35.SupportPolicy(),
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i36.ContactUs(),
      );
    },
    SellerDashboardRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i37.SellerDashboard(),
        opaque: true,
      );
    },
    SellerMoneyWithDrawRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i38.SellerMoneyWithDraw(),
        opaque: true,
      );
    },
    SellerAddProductRoute.name: (routeData) {
      return _i40.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i39.SellerAddProduct(),
        opaque: true,
      );
    },
  };

  @override
  List<_i40.RouteConfig> get routes => [
        _i40.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i40.RouteConfig(
          LoginRoute.name,
          path: '/Login',
        ),
        _i40.RouteConfig(
          ActiveAccountRoute.name,
          path: '/active-account',
        ),
        _i40.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password',
        ),
        _i40.RouteConfig(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        ),
        _i40.RouteConfig(
          RegisterRoute.name,
          path: '/Register',
        ),
        _i40.RouteConfig(
          RegisterShopRoute.name,
          path: '/register-shop',
        ),
        _i40.RouteConfig(
          HomeRoute.name,
          path: '/Home',
        ),
        _i40.RouteConfig(
          ProfileRoute.name,
          path: '/Profile',
        ),
        _i40.RouteConfig(
          DashBoardRoute.name,
          path: '/dash-board',
        ),
        _i40.RouteConfig(
          DownloadsRoute.name,
          path: '/Downloads',
        ),
        _i40.RouteConfig(
          PurchasedHistoryRoute.name,
          path: '/purchased-history',
        ),
        _i40.RouteConfig(
          WishlistRoute.name,
          path: '/Wishlist',
        ),
        _i40.RouteConfig(
          ConversationsRoute.name,
          path: '/Conversations',
        ),
        _i40.RouteConfig(
          MyWalletRoute.name,
          path: '/my-wallet',
        ),
        _i40.RouteConfig(
          SupportTicketsRoute.name,
          path: '/support-tickets',
        ),
        _i40.RouteConfig(
          CompareRoute.name,
          path: '/Compare',
        ),
        _i40.RouteConfig(
          FlashSaleRoute.name,
          path: '/flash-sale',
        ),
        _i40.RouteConfig(
          DealOfTheDayRoute.name,
          path: '/deal-of-the-day',
        ),
        _i40.RouteConfig(
          BrandsRoute.name,
          path: '/Brands',
        ),
        _i40.RouteConfig(
          CartRoute.name,
          path: '/Cart',
        ),
        _i40.RouteConfig(
          CategoryDetailsRoute.name,
          path: '/category-details',
        ),
        _i40.RouteConfig(
          ShippingRoute.name,
          path: '/Shipping',
        ),
        _i40.RouteConfig(
          DeliveryRoute.name,
          path: '/Delivery',
        ),
        _i40.RouteConfig(
          ProductDetailsRoute.name,
          path: '/product-details',
        ),
        _i40.RouteConfig(
          PaymentRoute.name,
          path: '/Payment',
        ),
        _i40.RouteConfig(
          AddressesRoute.name,
          path: '/Addresses',
        ),
        _i40.RouteConfig(
          TicketsDetailsRoute.name,
          path: '/tickets-details',
        ),
        _i40.RouteConfig(
          OrderSummaryRoute.name,
          path: '/order-summary',
        ),
        _i40.RouteConfig(
          AddNewAddressRoute.name,
          path: '/add-new-address',
        ),
        _i40.RouteConfig(
          SearchRoute.name,
          path: '/Search',
        ),
        _i40.RouteConfig(
          TermsRoute.name,
          path: '/Terms',
        ),
        _i40.RouteConfig(
          PrivacyRoute.name,
          path: '/Privacy',
        ),
        _i40.RouteConfig(
          ReturnPolicyRoute.name,
          path: '/return-policy',
        ),
        _i40.RouteConfig(
          SupportPolicyRoute.name,
          path: '/support-policy',
        ),
        _i40.RouteConfig(
          ContactUsRoute.name,
          path: '/contact-us',
        ),
        _i40.RouteConfig(
          SellerDashboardRoute.name,
          path: '/seller-dashboard',
        ),
        _i40.RouteConfig(
          SellerMoneyWithDrawRoute.name,
          path: '/seller-money-with-draw',
        ),
        _i40.RouteConfig(
          SellerAddProductRoute.name,
          path: '/seller-add-product',
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i40.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i40.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/Login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ActiveAccount]
class ActiveAccountRoute extends _i40.PageRouteInfo<void> {
  const ActiveAccountRoute()
      : super(
          ActiveAccountRoute.name,
          path: '/active-account',
        );

  static const String name = 'ActiveAccountRoute';
}

/// generated route for
/// [_i4.ResetPassword]
class ResetPasswordRoute extends _i40.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i5.ForgetPassword]
class ForgetPasswordRoute extends _i40.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        );

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i6.Register]
class RegisterRoute extends _i40.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/Register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i7.RegisterShop]
class RegisterShopRoute extends _i40.PageRouteInfo<void> {
  const RegisterShopRoute()
      : super(
          RegisterShopRoute.name,
          path: '/register-shop',
        );

  static const String name = 'RegisterShopRoute';
}

/// generated route for
/// [_i8.Home]
class HomeRoute extends _i40.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i41.Key? key,
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

  final _i41.Key? key;

  final int index;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i9.Profile]
class ProfileRoute extends _i40.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/Profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i10.DashBoard]
class DashBoardRoute extends _i40.PageRouteInfo<void> {
  const DashBoardRoute()
      : super(
          DashBoardRoute.name,
          path: '/dash-board',
        );

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [_i11.Downloads]
class DownloadsRoute extends _i40.PageRouteInfo<void> {
  const DownloadsRoute()
      : super(
          DownloadsRoute.name,
          path: '/Downloads',
        );

  static const String name = 'DownloadsRoute';
}

/// generated route for
/// [_i12.PurchasedHistory]
class PurchasedHistoryRoute extends _i40.PageRouteInfo<void> {
  const PurchasedHistoryRoute()
      : super(
          PurchasedHistoryRoute.name,
          path: '/purchased-history',
        );

  static const String name = 'PurchasedHistoryRoute';
}

/// generated route for
/// [_i13.Wishlist]
class WishlistRoute extends _i40.PageRouteInfo<void> {
  const WishlistRoute()
      : super(
          WishlistRoute.name,
          path: '/Wishlist',
        );

  static const String name = 'WishlistRoute';
}

/// generated route for
/// [_i14.Conversations]
class ConversationsRoute extends _i40.PageRouteInfo<void> {
  const ConversationsRoute()
      : super(
          ConversationsRoute.name,
          path: '/Conversations',
        );

  static const String name = 'ConversationsRoute';
}

/// generated route for
/// [_i15.MyWallet]
class MyWalletRoute extends _i40.PageRouteInfo<void> {
  const MyWalletRoute()
      : super(
          MyWalletRoute.name,
          path: '/my-wallet',
        );

  static const String name = 'MyWalletRoute';
}

/// generated route for
/// [_i16.SupportTickets]
class SupportTicketsRoute extends _i40.PageRouteInfo<void> {
  const SupportTicketsRoute()
      : super(
          SupportTicketsRoute.name,
          path: '/support-tickets',
        );

  static const String name = 'SupportTicketsRoute';
}

/// generated route for
/// [_i17.Compare]
class CompareRoute extends _i40.PageRouteInfo<void> {
  const CompareRoute()
      : super(
          CompareRoute.name,
          path: '/Compare',
        );

  static const String name = 'CompareRoute';
}

/// generated route for
/// [_i18.FlashSale]
class FlashSaleRoute extends _i40.PageRouteInfo<void> {
  const FlashSaleRoute()
      : super(
          FlashSaleRoute.name,
          path: '/flash-sale',
        );

  static const String name = 'FlashSaleRoute';
}

/// generated route for
/// [_i19.DealOfTheDay]
class DealOfTheDayRoute extends _i40.PageRouteInfo<void> {
  const DealOfTheDayRoute()
      : super(
          DealOfTheDayRoute.name,
          path: '/deal-of-the-day',
        );

  static const String name = 'DealOfTheDayRoute';
}

/// generated route for
/// [_i20.Brands]
class BrandsRoute extends _i40.PageRouteInfo<void> {
  const BrandsRoute()
      : super(
          BrandsRoute.name,
          path: '/Brands',
        );

  static const String name = 'BrandsRoute';
}

/// generated route for
/// [_i21.Cart]
class CartRoute extends _i40.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/Cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i22.CategoryDetails]
class CategoryDetailsRoute
    extends _i40.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i41.Key? key,
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

  final _i41.Key? key;

  final String title;

  @override
  String toString() {
    return 'CategoryDetailsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i23.Shipping]
class ShippingRoute extends _i40.PageRouteInfo<void> {
  const ShippingRoute()
      : super(
          ShippingRoute.name,
          path: '/Shipping',
        );

  static const String name = 'ShippingRoute';
}

/// generated route for
/// [_i24.Delivery]
class DeliveryRoute extends _i40.PageRouteInfo<void> {
  const DeliveryRoute()
      : super(
          DeliveryRoute.name,
          path: '/Delivery',
        );

  static const String name = 'DeliveryRoute';
}

/// generated route for
/// [_i25.ProductDetails]
class ProductDetailsRoute extends _i40.PageRouteInfo<void> {
  const ProductDetailsRoute()
      : super(
          ProductDetailsRoute.name,
          path: '/product-details',
        );

  static const String name = 'ProductDetailsRoute';
}

/// generated route for
/// [_i26.Payment]
class PaymentRoute extends _i40.PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: '/Payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i27.Addresses]
class AddressesRoute extends _i40.PageRouteInfo<void> {
  const AddressesRoute()
      : super(
          AddressesRoute.name,
          path: '/Addresses',
        );

  static const String name = 'AddressesRoute';
}

/// generated route for
/// [_i28.TicketsDetails]
class TicketsDetailsRoute extends _i40.PageRouteInfo<void> {
  const TicketsDetailsRoute()
      : super(
          TicketsDetailsRoute.name,
          path: '/tickets-details',
        );

  static const String name = 'TicketsDetailsRoute';
}

/// generated route for
/// [_i29.OrderSummary]
class OrderSummaryRoute extends _i40.PageRouteInfo<OrderSummaryRouteArgs> {
  OrderSummaryRoute({
    _i41.Key? key,
    bool isTrackOrder = false,
  }) : super(
          OrderSummaryRoute.name,
          path: '/order-summary',
          args: OrderSummaryRouteArgs(
            key: key,
            isTrackOrder: isTrackOrder,
          ),
        );

  static const String name = 'OrderSummaryRoute';
}

class OrderSummaryRouteArgs {
  const OrderSummaryRouteArgs({
    this.key,
    this.isTrackOrder = false,
  });

  final _i41.Key? key;

  final bool isTrackOrder;

  @override
  String toString() {
    return 'OrderSummaryRouteArgs{key: $key, isTrackOrder: $isTrackOrder}';
  }
}

/// generated route for
/// [_i30.AddNewAddress]
class AddNewAddressRoute extends _i40.PageRouteInfo<void> {
  const AddNewAddressRoute()
      : super(
          AddNewAddressRoute.name,
          path: '/add-new-address',
        );

  static const String name = 'AddNewAddressRoute';
}

/// generated route for
/// [_i31.Search]
class SearchRoute extends _i40.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/Search',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i32.Terms]
class TermsRoute extends _i40.PageRouteInfo<void> {
  const TermsRoute()
      : super(
          TermsRoute.name,
          path: '/Terms',
        );

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i33.Privacy]
class PrivacyRoute extends _i40.PageRouteInfo<void> {
  const PrivacyRoute()
      : super(
          PrivacyRoute.name,
          path: '/Privacy',
        );

  static const String name = 'PrivacyRoute';
}

/// generated route for
/// [_i34.ReturnPolicy]
class ReturnPolicyRoute extends _i40.PageRouteInfo<void> {
  const ReturnPolicyRoute()
      : super(
          ReturnPolicyRoute.name,
          path: '/return-policy',
        );

  static const String name = 'ReturnPolicyRoute';
}

/// generated route for
/// [_i35.SupportPolicy]
class SupportPolicyRoute extends _i40.PageRouteInfo<void> {
  const SupportPolicyRoute()
      : super(
          SupportPolicyRoute.name,
          path: '/support-policy',
        );

  static const String name = 'SupportPolicyRoute';
}

/// generated route for
/// [_i36.ContactUs]
class ContactUsRoute extends _i40.PageRouteInfo<void> {
  const ContactUsRoute()
      : super(
          ContactUsRoute.name,
          path: '/contact-us',
        );

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i37.SellerDashboard]
class SellerDashboardRoute extends _i40.PageRouteInfo<void> {
  const SellerDashboardRoute()
      : super(
          SellerDashboardRoute.name,
          path: '/seller-dashboard',
        );

  static const String name = 'SellerDashboardRoute';
}

/// generated route for
/// [_i38.SellerMoneyWithDraw]
class SellerMoneyWithDrawRoute extends _i40.PageRouteInfo<void> {
  const SellerMoneyWithDrawRoute()
      : super(
          SellerMoneyWithDrawRoute.name,
          path: '/seller-money-with-draw',
        );

  static const String name = 'SellerMoneyWithDrawRoute';
}

/// generated route for
/// [_i39.SellerAddProduct]
class SellerAddProductRoute extends _i40.PageRouteInfo<void> {
  const SellerAddProductRoute()
      : super(
          SellerAddProductRoute.name,
          path: '/seller-add-product',
        );

  static const String name = 'SellerAddProductRoute';
}
