import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/order_summary/order_summary_imports.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/purchased_history/purchased_history_imports.dart';

const List<AutoRoute> purchasingRoute = [
  AdaptiveRoute(page: OrderSummary),
  AdaptiveRoute(page: PurchasedHistory),
];
