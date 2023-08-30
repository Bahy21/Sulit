import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_details_model/order_details_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
@immutable
class OrderModel extends BaseApiModel<OrderDomianModel> with _$OrderModel {
  const OrderModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderModel({
    required int id,
    required String code,
    @JsonKey(name: 'order_type') required String orderType,
    required String subtotal,
    required String shipping,
    required String tax,
    @JsonKey(name: 'coupon_discount') required String couponDiscount,
    required String total,
    required String date,
    @JsonKey(name: 'delivery_status') required String deliveryStatus,
    @JsonKey(name: 'delivery_viewed') required bool deliveryViewed,
    @JsonKey(name: 'payment_status_viewed') required bool paymentStatusViewed,
    @JsonKey(name: 'payment_status') required bool paymentStatus,
    @JsonKey(name: 'payment_status_text') required String paymentStatusText,
    @JsonKey(name: 'available_cancel_order') required bool availableCancelOrder,
    @JsonKey(name: 'additional_info') required String additionalInfo,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'shipping_method') required String shippingMethod,
    @JsonKey(name: 'order_status') required String orderStatus,
    @JsonKey(name: 'order_date') required String orderDate,
    @JsonKey(name: 'shipping_address') required String shippingAddress,
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'customer_email') required String customerEmail,
    @JsonKey(name: 'return_reason') required String returnReason,
    @JsonKey(name: 'order_details')
        required List<OrderDetailsModel> orderDetails,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  @override
  OrderDomianModel toDomainModel() {
    return OrderDomianModel(
      id: id,
      code: code,
      orderType: orderType,
      subtotal: subtotal,
      shipping: shipping,
      tax: tax,
      couponDiscount: couponDiscount,
      total: total,
      date: date,
      deliveryStatus: deliveryStatus,
      deliveryViewed: deliveryViewed,
      paymentStatusViewed: paymentStatusViewed,
      paymentStatus: paymentStatus,
      paymentStatusText: paymentStatusText,
      availableCancelOrder: availableCancelOrder,
      additionalInfo: additionalInfo,
      paymentMethod: paymentMethod,
      shippingMethod: shippingMethod,
      orderStatus: orderStatus,
      orderDate: orderDate,
      shippingAddress: shippingAddress,
      customerName: customerName,
      customerEmail: customerEmail,
      returnReason: returnReason,
      orderDetails: orderDetails.map((e) => e.toDomainModel()).toList(),
    );
  }
}
