import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/color_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/variant.dart';

class Product extends BaseDomainModel {
  final int id;
  final String name;
  final String thumbnailImage;
  List<String> images;
  final bool isMultiple;
  final String priceHighLowDiscount;
  final String priceHighLow;
  final bool hasDiscount;
  final String discount;
  final String? strokedPrice;
  final String? mainPrice;
  final List<ProductOptions>? choiceOptions;
  final List<ColorDomainModel>? colors;
  final int minQty;
  final String currencySymbol;
  Variant? variant;
  final List<String>? tags;
  final num rating;
  final int sales;
  final bool isDigital;
  final bool isWishlist;
  final int sellerId;
  final int countReviews;
  final String soldByType;
  final String soldByName;
  final Shop? shop;
  final List<Reviews>? reviews;
  final bool isResale;
  final int resellerId;
  final Category? category;
  final BrandDomainModel? brand;
  final String? description;
  final String? videoProvider;
  final String? videoLink;
  final String categoryName;
  final String brandName;

  Product({
    required this.id,
    required this.name,
    required this.images,
    required this.thumbnailImage,
    required this.isMultiple,
    required this.priceHighLowDiscount,
    required this.priceHighLow,
    required this.hasDiscount,
    required this.discount,
    this.strokedPrice,
     this.variant,
    this.mainPrice,
    this.choiceOptions,
    this.colors,
    required this.minQty,
    required this.currencySymbol,
    this.tags,
    required this.rating,
    required this.sales,
    required this.isDigital,
    required this.isWishlist,
    required this.sellerId,
    required this.countReviews,
    required this.soldByType,
    required this.soldByName,
    this.shop,
    this.reviews,
    required this.isResale,
    required this.resellerId,
    this.category,
    this.brand,
    this.description,
    this.videoProvider,
    this.videoLink,
    required this.categoryName,
    required this.brandName,
  });
}
