import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CategoryDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String? banner;
  final String icon;
  final int orderLevel;
  final int digital;
  final String slug;

  CategoryDomainModel({
    required this.id,
    required this.name,
    this.banner,
    required this.icon,
    required this.orderLevel,
    required this.digital,
    required this.slug,
  });
}
