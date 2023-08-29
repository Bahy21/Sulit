import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Dashboards extends BaseDomainModel {
  final int cartCount;
  final int wishlistCount;
  final int ordersCount;
  String? defaultAddress;

  Dashboards({
    required this.cartCount,
    required this.wishlistCount,
    required this.ordersCount,
    this.defaultAddress,
  });
}
