import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_queries.dart';

class ProductDetailsDomainModel extends BaseDomainModel {
  final Product product;
  final List<Product> relatedProducts;
  final List<Product> topProducts;
  final ProductQueries productQueries;

  ProductDetailsDomainModel(
      {required this.product,
      required this.relatedProducts,
      required this.topProducts,
      required this.productQueries});
}
