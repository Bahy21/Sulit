import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';

class Address extends BaseDomainModel {
  int id;
  int userId;
  String address;
  Country country;
  StateDomainModel? state;
  City? city;
  String postalCode;
  String phone;
  bool setDefault;
  double lat;
  double lang;
  bool isActive;
  bool selected = false ;

  Address({
    required this.id,
    required this.userId,
    required this.address,
    required  this.country,
    this.state,
    this.city,
    required this.postalCode,
    required this.phone,
    required this.setDefault,
    required this.lat,
    required this.lang,
    required this.isActive,
  });
}
