import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/brand_details/brand_details_imports.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/brands/brands_imports.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/categories/categories_imports.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/category_details_imports.dart';

const List<AutoRoute> categoryRoute = [
  AdaptiveRoute(page: Brands),
  AdaptiveRoute(page: Categories),
  AdaptiveRoute(page: CategoryDetails),
  AdaptiveRoute(page: BrandDetails),
];
