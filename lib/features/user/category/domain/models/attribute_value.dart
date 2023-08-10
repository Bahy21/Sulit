import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AttributeValue extends BaseDomainModel {
  final int id;
  final String value;
  final String? colorCode;
  bool selected;

  AttributeValue(
      {required this.id,
      required this.value,
      this.colorCode,
      this.selected = false});
}
