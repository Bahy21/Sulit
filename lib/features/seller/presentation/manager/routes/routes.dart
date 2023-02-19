import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/seller/presentation/pages/seller_dashboard/seller_dashboard_imports.dart';

import '../../pages/payment_history/payment_history_imports.dart';

const List<AutoRoute> sellerRoute = [
  AdaptiveRoute(page: SellerDashboard),
  AdaptiveRoute(page: PaymentHistory),
];
