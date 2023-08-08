import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PaginationDomainModel extends BaseDomainModel {
  final int totalItems;
  final int countItems;
  final int perPage;
  final int totalPages;
  final int currentPage;
  final String nextPage;
  final String pervPage;

  PaginationDomainModel(
      {required this.totalItems,
      required this.currentPage,
      required this.countItems,
      required this.nextPage,
      required this.perPage,
      required this.pervPage,
      required this.totalPages});
}
