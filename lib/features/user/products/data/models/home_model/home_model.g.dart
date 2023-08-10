// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$$_HomeModelFromJson(Map<String, dynamic> json) => _$_HomeModel(
      sliders: (json['sliders'] as List<dynamic>)
          .map((e) => SliderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bannersOne: (json['banners_one'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bannersTwo: (json['banners_two'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      flashSales: (json['flash_deals'] as List<dynamic>)
          .map((e) => FlashSaleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostPopular: (json['most_populars'] as List<dynamic>)
          .map((e) => PopularProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSellingProducts: (json['best_selling_products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newestProducts: (json['newest_products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredProducts: (json['featured_products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topCategories: (json['top_categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topBrands: (json['top_brands'] as List<dynamic>)
          .map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'sliders': instance.sliders.map((e) => e.toJson()).toList(),
      'banners_one': instance.bannersOne.map((e) => e.toJson()).toList(),
      'banners_two': instance.bannersTwo.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'flash_deals': instance.flashSales.map((e) => e.toJson()).toList(),
      'most_populars': instance.mostPopular.map((e) => e.toJson()).toList(),
      'best_selling_products':
          instance.bestSellingProducts.map((e) => e.toJson()).toList(),
      'newest_products':
          instance.newestProducts.map((e) => e.toJson()).toList(),
      'featured_products':
          instance.featuredProducts.map((e) => e.toJson()).toList(),
      'top_categories': instance.topCategories.map((e) => e.toJson()).toList(),
      'top_brands': instance.topBrands.map((e) => e.toJson()).toList(),
    };
