import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Pickup extends BaseDomainModel{
  int id;
  String address;
  String postalCode;
  String phone;
  double? lat;
  double? lang;

  Pickup({required this.id,
    required this.address,
    required this.postalCode,
    required this.phone,
    required this.lat,
    required this.lang});
}