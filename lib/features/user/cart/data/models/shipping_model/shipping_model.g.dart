// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingModel _$$_ShippingModelFromJson(Map<String, dynamic> json) =>
    _$_ShippingModel(
      summary: ShippingSummaryModel.fromJson(
          json['summary'] as Map<String, dynamic>),
      paymentOption: (json['payment_option'] as List<dynamic>?)
          ?.map((e) => PaymentOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShippingModelToJson(_$_ShippingModel instance) =>
    <String, dynamic>{
      'summary': instance.summary.toJson(),
      'payment_option': instance.paymentOption?.map((e) => e.toJson()).toList(),
    };
