// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int,
      name: json['name'] as String,
      thumbnailImage: json['thumbnail_image'] as String,
      hasDiscount: json['has_discount'] as bool,
      discount: json['discount'] as String,
      strokedPrice: json['stroked_price'] as String,
      mainPrice: json['main_price'] as String,
      rating: json['rating'] as int,
      sales: json['sales'] as int,
      sellerId: json['seller_id'] as int,
      isResale: json['is_resale'] as bool,
      resellerId: json['reseller_id'] as int,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail_image': instance.thumbnailImage,
      'has_discount': instance.hasDiscount,
      'discount': instance.discount,
      'stroked_price': instance.strokedPrice,
      'main_price': instance.mainPrice,
      'rating': instance.rating,
      'sales': instance.sales,
      'seller_id': instance.sellerId,
      'is_resale': instance.isResale,
      'reseller_id': instance.resellerId,
    };
