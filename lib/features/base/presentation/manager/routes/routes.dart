import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/base/presentation/pages/category_details/category_details_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/conversations/conversations_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/dashboard/dashboard_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/delivery/delivery_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/tabs/cart/cart_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/payment/payment_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/shipping/shipping_imports.dart';
import 'package:flutter_tdd/features/general/presentation/manager/routes/routes.dart';

import '../../pages/brands/brands_imports.dart';
import '../../pages/compare/compare_imports.dart';
import '../../pages/deal_of_the_day/deal_of_the_day_imports.dart';
import '../../pages/downloads/downloads_import.dart';
import '../../pages/flash_sale/flash_imports.dart';
import '../../pages/my_wallet/my_wallet_imports.dart';
import '../../pages/product_details/product_details_imports.dart';
import '../../pages/profile/profile_imports.dart';
import '../../pages/purchased_history/purchased_history_imports.dart';
import '../../pages/support_tickets/support_tickets_imports.dart';
import '../../pages/wishlist/wishlist_imports.dart';

const List<AutoRoute> baseRoute = [
  AutoRoute(page: Home),
  AutoRoute(page: Profile),
  AutoRoute(page: DashBoard),
  AutoRoute(page: Downloads),
  AutoRoute(page: PurchasedHistory),
  AutoRoute(page: Wishlist),
  AutoRoute(page: Conversations),
  AutoRoute(page: MyWallet),
  AutoRoute(page: SupportTickets),
  AutoRoute(page: Compare),
  AutoRoute(page: FlashSale),
  AutoRoute(page: DealOfTheDay),
  AutoRoute(page: Brands),
  CustomRoute(
    page: Cart,
    durationInMilliseconds: 800,
    transitionsBuilder: TransitionsBuilders.zoomIn,
  ),
  AutoRoute(page: CategoryDetails),
  AutoRoute(page: Shipping),
  AutoRoute(page: Delivery),
  AutoRoute(page: ProductDetails),
  AutoRoute(page: Payment),

];
