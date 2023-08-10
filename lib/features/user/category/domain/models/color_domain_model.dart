import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ColorDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String code;
  bool selected;

  ColorDomainModel({
    required this.id,
    required this.name,
    required this.code,
    this.selected = false,
  });
}
