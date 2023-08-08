import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_queries.dart';

class MainProductDetails extends BaseDomainModel {
  final ProductDetailsDomainModel product;
  final List<ProductDetailsDomainModel> relatedProducts;
  final List<ProductDetailsDomainModel> topProducts;
  final ProductQueries productQueries;

  MainProductDetails(
      {required this.product,
      required this.relatedProducts,
      required this.topProducts,
      required this.productQueries});
}
