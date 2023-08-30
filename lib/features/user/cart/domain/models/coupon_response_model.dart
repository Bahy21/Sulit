import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';

class CouponResponse extends BaseDomainModel {
  String msg;
  Shipping shipping;

  CouponResponse({
    required this.msg,
    required this.shipping,
  });
}
