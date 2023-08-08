import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Variant extends BaseDomainModel{
  int id;
  String name;
  double strokedPrice;

  double calculablePrice;

  String mainPrice;

  double currentStock;

  String currencySymbol;

  String image;

  String options;

  Variant({
    required this.id,
    required this.name,
    required this.strokedPrice,
    required this.calculablePrice,
    required this.mainPrice,
    required this.currentStock,
    required this.currencySymbol,
    required this.image,
    required this.options,
  });
}
