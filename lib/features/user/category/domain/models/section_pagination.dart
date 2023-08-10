import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/pagination_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class SectionPagination extends BaseDomainModel {
  final PaginationDomainModel pagination;
  final List<Product> products;

  SectionPagination({required this.pagination, required this.products});
}
