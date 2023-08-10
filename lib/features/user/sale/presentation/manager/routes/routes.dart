import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/deal_of_the_day/deal_of_the_day_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/flash_sale/flash_sale_imports.dart';
import 'package:flutter_tdd/features/user/sale/presentation/pages/sale_details/sale_details_imports.dart';

const List<AutoRoute> saleRoute = [
  AdaptiveRoute(page: DealOfTheDay),
  AdaptiveRoute(page: FlashSale),
  AdaptiveRoute(page: SaleDetails),
];
