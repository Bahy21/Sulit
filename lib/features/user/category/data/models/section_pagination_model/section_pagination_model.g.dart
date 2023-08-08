// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionPaginationModel _$$_SectionPaginationModelFromJson(
        Map<String, dynamic> json) =>
    _$_SectionPaginationModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SectionPaginationModelToJson(
        _$_SectionPaginationModel instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };
