import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/seller/presentation/pages/seller_add_product/seller_add_product_imports.dart';
import 'package:flutter_tdd/features/seller/presentation/pages/seller_dashboard/seller_dashboard_imports.dart';
import 'package:flutter_tdd/features/seller/presentation/pages/seller_money_withdraw/seller_money_withdraw_imports.dart';

import '../../pages/payment_history/payment_history_imports.dart';
import '../../pages/seller_digetal_products/seller_digetal_products_imports.dart';
import '../../pages/seller_product_bulk/seller_product_bulk_imports.dart';
import '../../pages/seller_product_review/seller_product_review_imports.dart';
import '../../pages/seller_products/seller_products_imports.dart';

const List<AutoRoute> sellerRoute = [
  AdaptiveRoute(page: SellerDashboard),
  AdaptiveRoute(page: PaymentHistory),
  AdaptiveRoute(page: SellerMoneyWithDraw),
  AdaptiveRoute(page: SellerAddProduct),
  AdaptiveRoute(page: SellerDigitalProducts),
  AdaptiveRoute(page: SellerProducts),
  AdaptiveRoute(page: SellerProductReview),
  AdaptiveRoute(page: SellerProductBulk),

];
