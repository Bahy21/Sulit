// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailsModel _$$_OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailsModel(
      id: json['id'] as int,
      variation: json['variation'] as String,
      quantity: json['quantity'] as int,
      deliveryType: json['delivery_type'] as String,
      price: json['price'] as String,
      tax: json['tax'] as String?,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderDetailsModelToJson(
        _$_OrderDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variation': instance.variation,
      'quantity': instance.quantity,
      'delivery_type': instance.deliveryType,
      'price': instance.price,
      'tax': instance.tax,
      'product': instance.product?.toJson(),
    };
