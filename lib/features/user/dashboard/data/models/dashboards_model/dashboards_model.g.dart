// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardsModel _$$_DashboardsModelFromJson(Map<String, dynamic> json) =>
    _$_DashboardsModel(
      cartCount: json['cart_products_count'] as int,
      wishlistCount: json['wishlist_products_count'] as int,
      ordersCount: json['orders_products_count'] as int,
      defaultAddress: json['default shipping_address'] as String?,
    );

Map<String, dynamic> _$$_DashboardsModelToJson(_$_DashboardsModel instance) =>
    <String, dynamic>{
      'cart_products_count': instance.cartCount,
      'wishlist_products_count': instance.wishlistCount,
      'orders_products_count': instance.ordersCount,
      'default shipping_address': instance.defaultAddress,
    };
