import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ShippingItem extends BaseDomainModel {
  String name;
  int quantity;
  String total;

  ShippingItem({
    required this.name,
    required this.quantity,
    required this.total,
  });
}
