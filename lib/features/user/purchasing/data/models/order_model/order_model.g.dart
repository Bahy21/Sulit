// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int,
      code: json['code'] as String,
      orderType: json['order_type'] as String,
      subtotal: json['subtotal'] as String,
      shipping: json['shipping'] as String,
      tax: json['tax'] as String,
      couponDiscount: json['coupon_discount'] as String,
      total: json['total'] as String,
      date: json['date'] as String,
      deliveryStatus: json['delivery_status'] as String,
      deliveryViewed: json['delivery_viewed'] as bool,
      paymentStatusViewed: json['payment_status_viewed'] as bool,
      paymentStatus: json['payment_status'] as bool,
      paymentStatusText: json['payment_status_text'] as String,
      availableCancelOrder: json['available_cancel_order'] as bool,
      additionalInfo: json['additional_info'] as String,
      paymentMethod: json['payment_method'] as String,
      shippingMethod: json['shipping_method'] as String,
      orderStatus: json['order_status'] as String,
      orderDate: json['order_date'] as String,
      shippingAddress: json['shipping_address'] as String,
      customerName: json['customer_name'] as String,
      customerEmail: json['customer_email'] as String,
      returnReason: json['return_reason'] as String,
      orderDetails: (json['order_details'] as List<dynamic>)
          .map((e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'order_type': instance.orderType,
      'subtotal': instance.subtotal,
      'shipping': instance.shipping,
      'tax': instance.tax,
      'coupon_discount': instance.couponDiscount,
      'total': instance.total,
      'date': instance.date,
      'delivery_status': instance.deliveryStatus,
      'delivery_viewed': instance.deliveryViewed,
      'payment_status_viewed': instance.paymentStatusViewed,
      'payment_status': instance.paymentStatus,
      'payment_status_text': instance.paymentStatusText,
      'available_cancel_order': instance.availableCancelOrder,
      'additional_info': instance.additionalInfo,
      'payment_method': instance.paymentMethod,
      'shipping_method': instance.shippingMethod,
      'order_status': instance.orderStatus,
      'order_date': instance.orderDate,
      'shipping_address': instance.shippingAddress,
      'customer_name': instance.customerName,
      'customer_email': instance.customerEmail,
      'return_reason': instance.returnReason,
      'order_details': instance.orderDetails.map((e) => e.toJson()).toList(),
    };
