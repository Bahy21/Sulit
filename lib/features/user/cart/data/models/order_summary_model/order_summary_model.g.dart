// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderSummaryModel _$$_OrderSummaryModelFromJson(Map<String, dynamic> json) =>
    _$_OrderSummaryModel(
      orderSummary:
          SummaryModel.fromJson(json['order_summary'] as Map<String, dynamic>),
      sectionOrders: (json['section_orders'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderSummaryModelToJson(
        _$_OrderSummaryModel instance) =>
    <String, dynamic>{
      'order_summary': instance.orderSummary.toJson(),
      'section_orders': instance.sectionOrders.map((e) => e.toJson()).toList(),
    };
