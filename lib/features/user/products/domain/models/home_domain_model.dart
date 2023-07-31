import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/banner_model/banner_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/popular_product_model/popular_product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/slider_model/slider_model.dart';

class HomeDomainModel extends BaseDomainModel {
  final List<SliderModel> sliders;
  final List<BannerModel> bannersOne;
  final List<BannerModel> bannersTwo;
  final List<CategoryModel> categories;
  final List<PopularProductModel> mostPopular;
  final List<ProductModel> bestSellingProducts;
  final List<ProductModel> newestProducts;
  final List<ProductModel> featuredProducts;
  final List<CategoryModel> topCategories;
  final List<BrandModel> topBrands;

  HomeDomainModel({
    required this.sliders,
    required this.bannersOne,
    required this.bannersTwo,
    required this.categories,
    required this.mostPopular,
    required this.bestSellingProducts,
    required this.newestProducts,
    required this.featuredProducts,
    required this.topCategories,
    required this.topBrands,
  });
}
