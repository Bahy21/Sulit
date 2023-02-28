import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_add_product/seller_add_product_imports.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_add_product_specifications/seller_add_product_specifications_imports.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_digetal_products/seller_digetal_products_imports.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_product_bulk/seller_product_bulk_imports.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_product_review/seller_product_review_imports.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_products/seller_products_imports.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_reselling/seller_reselling_imports.dart';

const List<AutoRoute> sellerProductsRoute = [
  AdaptiveRoute(page: SellerAddProduct),
  AdaptiveRoute(page: SellerAddProductSpecifications),
  AdaptiveRoute(page: SellerDigitalProducts),
  AdaptiveRoute(page: SellerProductBulk),
  AdaptiveRoute(page: SellerProductReview),
  AdaptiveRoute(page: SellerProducts),
  AdaptiveRoute(page: SellerReselling),
];
