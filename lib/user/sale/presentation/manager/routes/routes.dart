import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/user/sale/presentation/pages/deal_of_the_day/deal_of_the_day_imports.dart';
import 'package:flutter_tdd/user/sale/presentation/pages/flash_sale/flash_imports.dart';

const List<AutoRoute> saleRoute = [
  AdaptiveRoute(page: DealOfTheDay),
  AdaptiveRoute(page: FlashSale),
];
