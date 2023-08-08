import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/queries.dart';

class ProductQueries extends BaseDomainModel {
  final List<Queries> ownProductQueries;
  final List<Queries> otherProductQueries;
  final int totalCount;
  final int queriesOffset;

  ProductQueries(
      {required this.ownProductQueries,
      required this.otherProductQueries,
      required this.totalCount,
      required this.queriesOffset});
}
