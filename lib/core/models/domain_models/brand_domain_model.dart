import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class BrandDomainModel extends BaseDomainModel{
 final int id;
 final String name;
 final  String logo;

  BrandDomainModel({
    required this.id,
    required this.name,
    required this.logo,
  });
}