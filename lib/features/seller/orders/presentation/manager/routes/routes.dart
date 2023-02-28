import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/seller/orders/presentation/pages/seller_commission_history/seller_commission_history_imports.dart';
import 'package:flutter_tdd/features/seller/orders/presentation/pages/seller_order_details/seller_order_details_imports.dart';
import 'package:flutter_tdd/features/seller/orders/presentation/pages/seller_orders/seller_orders_imports.dart';

const List<AutoRoute> sellerOrderRoutes = [
  AdaptiveRoute(page: SellerOrderDetails),
  AdaptiveRoute(page: SellerOrders),
  AdaptiveRoute(page: SellerCommissionHistory),
];
