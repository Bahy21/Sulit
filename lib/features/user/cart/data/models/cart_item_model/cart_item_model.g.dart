// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemModel _$$_CartItemModelFromJson(Map<String, dynamic> json) =>
    _$_CartItemModel(
      id: json['id'] as int,
      ownerId: json['owner_id'] as int,
      thumbnailImage: json['thumbnail_image'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      tax: json['tax'] as String,
      quantity: json['quantity'] as int,
      isDigital: json['is_digital'] as bool,
      total: json['total'] as String,
      calculableTotal: (json['calculable_total'] as num).toDouble(),
      currencySymbol: json['currency_symbol'] as String,
      productId: json['product_id'] as int,
      minQty: json['min_qty'] as int,
      stockQty: json['stock_qty'] as int,
    );

Map<String, dynamic> _$$_CartItemModelToJson(_$_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'thumbnail_image': instance.thumbnailImage,
      'name': instance.name,
      'price': instance.price,
      'tax': instance.tax,
      'quantity': instance.quantity,
      'is_digital': instance.isDigital,
      'total': instance.total,
      'calculable_total': instance.calculableTotal,
      'currency_symbol': instance.currencySymbol,
      'product_id': instance.productId,
      'min_qty': instance.minQty,
      'stock_qty': instance.stockQty,
    };
