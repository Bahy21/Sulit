import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';

class OrderDomianModel extends BaseDomainModel{
  int id;
  String code;
  String orderType;
  String subtotal;
  String shipping;
  String tax;
  String couponDiscount;
  String total;
  String date;
  String deliveryStatus;
  bool deliveryViewed;
  bool paymentStatusViewed;
  bool paymentStatus;
  String paymentStatusText;
  bool availableCancelOrder;
  String additionalInfo;
  String paymentMethod;
  String shippingMethod;
  String orderStatus;
  String orderDate;
  String shippingAddress;
  String customerName;
  String customerEmail;
  String returnReason;
  List<OrderDetails> orderDetails;
  bool selected = false ;

  OrderDomianModel({
    required this.id,
    required this.code,
    required this.orderType,
    required this.subtotal,
    required this.shipping,
    required this.tax,
    required this.couponDiscount,
    required this.total,
    required this.date,
    required this.deliveryStatus,
    required this.deliveryViewed,
    required this.paymentStatusViewed,
    required this.paymentStatus,
    required this.paymentStatusText,
    required this.availableCancelOrder,
    required this.additionalInfo,
    required this.paymentMethod,
    required this.shippingMethod,
    required this.orderStatus,
    required this.orderDate,
    required this.shippingAddress,
    required this.customerName,
    required this.customerEmail,
    required this.returnReason,
    required this.orderDetails,
  });
}
