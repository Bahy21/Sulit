import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PriceRange extends BaseDomainModel {
  final String min;
  final String max;

  PriceRange({required this.min, required this.max});
}
