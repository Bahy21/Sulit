import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/user/products/presentation/pages/compare/compare_imports.dart';
import 'package:flutter_tdd/user/products/presentation/pages/downloads/downloads_import.dart';
import 'package:flutter_tdd/user/products/presentation/pages/home_main/home_main_imports.dart';
import 'package:flutter_tdd/user/products/presentation/pages/product_details/product_details_imports.dart';
import 'package:flutter_tdd/user/products/presentation/pages/search/search_imports.dart';
import 'package:flutter_tdd/user/products/presentation/pages/wishlist/wishlist_imports.dart';

const List<AutoRoute> productsRoute = [
  AdaptiveRoute(page: Compare),
  AdaptiveRoute(page: Downloads),
  AdaptiveRoute(page: HomeMain),
  AdaptiveRoute(page: ProductDetails),
  AdaptiveRoute(page: Search),
  AdaptiveRoute(page: Wishlist),
];
