// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainProductDetailsModel _$$_MainProductDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_MainProductDetailsModel(
      product:
          ProductDetailsModel.fromJson(json['product'] as Map<String, dynamic>),
      relatedProducts: (json['related_products'] as List<dynamic>)
          .map((e) => ProductDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topProducts: (json['top_products'] as List<dynamic>)
          .map((e) => ProductDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      productQueries: ProductQueriesModel.fromJson(
          json['product_queries'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MainProductDetailsModelToJson(
        _$_MainProductDetailsModel instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'related_products':
          instance.relatedProducts.map((e) => e.toJson()).toList(),
      'top_products': instance.topProducts.map((e) => e.toJson()).toList(),
      'product_queries': instance.productQueries.toJson(),
    };
