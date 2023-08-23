// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingSummaryModel _$$_ShippingSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingSummaryModel(
      subtotal: json['subtotal'] as String,
      tax: json['tax'] as String,
      shipping: json['shipping'] as String,
      couponDiscount: json['coupon_discount'] as String,
      calTotal: (json['calculable_total'] as num).toDouble(),
      total: json['total'] as String,
      couponCode: json['coupon_code'] as String?,
      couponApplied: json['coupon_applied'] as bool?,
      totalItems: json['total_items'] as int,
      minimumOrderAmountStatus: json['minimum_order_amount_status'] as bool,
      minimumOrderAmountMsg: json['minimum_order_amount_msg'] as String,
      walletSystemActive: json['wallet_system_active'] as bool,
      walletBalance: json['wallet_balance'] as String,
      avilablePayWithWallet: json['avilable_pay_with_wallet'] as bool,
      avilableCashOnDelivery: json['avilable_cash_on_delivery'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => ShippingItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShippingSummaryModelToJson(
        _$_ShippingSummaryModel instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'coupon_discount': instance.couponDiscount,
      'calculable_total': instance.calTotal,
      'total': instance.total,
      'coupon_code': instance.couponCode,
      'coupon_applied': instance.couponApplied,
      'total_items': instance.totalItems,
      'minimum_order_amount_status': instance.minimumOrderAmountStatus,
      'minimum_order_amount_msg': instance.minimumOrderAmountMsg,
      'wallet_system_active': instance.walletSystemActive,
      'wallet_balance': instance.walletBalance,
      'avilable_pay_with_wallet': instance.avilablePayWithWallet,
      'avilable_cash_on_delivery': instance.avilableCashOnDelivery,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
