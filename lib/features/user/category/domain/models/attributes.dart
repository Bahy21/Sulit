import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/attribute_value.dart';

class Attributes extends BaseDomainModel {
  final int id;
  final String name;
  final List<AttributeValue> attributeValues;
  bool opened;
  List<String>? selectedAttributes;

  Attributes({
    required this.id,
    required this.name,
    required this.attributeValues,
    this.opened = false,
    this.selectedAttributes,
  });
}
