import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/banner_model/banner_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/popular_product_model/popular_product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/slider_model/slider_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';

part 'home_model.g.dart';

@freezed
@immutable
class HomeModel extends BaseApiModel<HomeDomainModel> with _$HomeModel {
  const HomeModel._();

  @JsonSerializable(explicitToJson: true)
  const factory HomeModel({
    @JsonKey(name: 'sliders') required List<SliderModel> sliders,
    @JsonKey(name: 'banners_one') required List<BannerModel> bannersOne,
    @JsonKey(name: 'banners_two') required List<BannerModel> bannersTwo,
    @JsonKey(name: 'categories') required List<CategoryModel> categories,
    @JsonKey(name: 'most_populars')
        required List<PopularProductModel> mostPopular,
    @JsonKey(name: 'best_selling_products')
        required List<ProductModel> bestSellingProducts,
    @JsonKey(name: 'newest_products')
        required List<ProductModel> newestProducts,
    @JsonKey(name: 'featured_products')
        required List<ProductModel> featuredProducts,
    @JsonKey(name: 'top_categories') required List<CategoryModel> topCategories,
    @JsonKey(name: 'top_brands') required List<BrandModel> topBrands,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  @override
  HomeDomainModel toDomainModel() {
    return HomeDomainModel(
      sliders: sliders,
      bannersOne: bannersOne,
      bannersTwo: bannersTwo,
      bestSellingProducts: bestSellingProducts,
      categories: categories,
      featuredProducts: featuredProducts,
      mostPopular: mostPopular,
      newestProducts: newestProducts,
      topBrands: topBrands,
      topCategories: topCategories,
    );
  }
}
