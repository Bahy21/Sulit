// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      banner: json['banner'] as String?,
      icon: json['icon'] as String,
      orderLevel: json['order_level'] as int,
      digital: json['digital'] as int,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'banner': instance.banner,
      'icon': instance.icon,
      'order_level': instance.orderLevel,
      'digital': instance.digital,
      'slug': instance.slug,
    };
