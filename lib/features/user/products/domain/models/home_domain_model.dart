import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/banner_model/banner_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/popular_product_model/popular_product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/slider_model/slider_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/banner_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/category_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/popular_products_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/slider_domain_model.dart';

class HomeDomainModel extends BaseDomainModel {
  final List<SliderDomainModel> sliders;
  final List<BannerDomainModel> bannersOne;
  final List<BannerDomainModel> bannersTwo;
  final List<CategoryDomainModel> categories;
  final List<PopularProductsDomainModel> mostPopular;
  final List<ProductDomainModel> bestSellingProducts;
  final List<ProductDomainModel> newestProducts;
  final List<ProductDomainModel> featuredProducts;
  final List<CategoryDomainModel> topCategories;
  final List<BrandDomainModel> topBrands;

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
