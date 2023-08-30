import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class OrderDetails extends BaseDomainModel{
  int id;
  String variation;
  int quantity;
  String deliveryType;
  String price;
  String? tax ;
  Product? product;

  OrderDetails({
    required this.id,
    required this.variation,
    required this.quantity,
    required this.deliveryType,
    required this.price,
    this.tax,
    this.product
  });
}
