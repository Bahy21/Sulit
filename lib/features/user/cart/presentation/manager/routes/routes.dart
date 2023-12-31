import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/cart_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/conformation/conformation_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/delivery/delivery_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/payment/payment_imports.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/shipping/shipping_imports.dart';

const List<AutoRoute> cartRoute = [
  AdaptiveRoute(page: Cart),
  AdaptiveRoute(page: Delivery),
  AdaptiveRoute(page: Payment),
  AdaptiveRoute(page: Shipping),
  AdaptiveRoute(page: Confirmation),
];
