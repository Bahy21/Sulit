
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/summary.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';

class OrderSummary extends BaseDomainModel {
  Summary summary;

  List<OrderModel> sectionOrders;

  OrderSummary({
    required this.summary,
    required this.sectionOrders,
  });
}
