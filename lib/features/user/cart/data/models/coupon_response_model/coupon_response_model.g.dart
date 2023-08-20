// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponResponseModel _$$_CouponResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CouponResponseModel(
      msg: json['msg'] as String,
      data: ShippingModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CouponResponseModelToJson(
        _$_CouponResponseModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'data': instance.data.toJson(),
    };
