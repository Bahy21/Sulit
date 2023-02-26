import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/seller/payment/presentation/pages/payment_history/payment_history_imports.dart';
import 'package:flutter_tdd/seller/payment/presentation/pages/seller_money_withdraw/seller_money_withdraw_imports.dart';
import 'package:flutter_tdd/seller/payment/presentation/pages/seller_payment_setting/seller_payment_setting_imports.dart';

const List<AutoRoute> sellerPaymentRoute = [
  AdaptiveRoute(page: PaymentHistory),
  AdaptiveRoute(page: SellerMoneyWithDraw),
  AdaptiveRoute(page: SellerPaymentSetting)
];
