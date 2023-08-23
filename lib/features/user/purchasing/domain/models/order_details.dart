import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class OrderDetails extends BaseDomainModel{
  int id;
  String variation;
  int quantity;
  String deliveryType;
  String price;

  OrderDetails({
    required this.id,
    required this.variation,
    required this.quantity,
    required this.deliveryType,
    required this.price,
  });
}
