import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';

class ProductDetailsDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String thumbnailImage;
  final bool isMultiple;
  final String priceHighLowDiscount;
  final String priceHighLow;
  final bool hasDiscount;
  final String discount;
  final String strokedPrice;
  final String mainPrice;
  final List<ProductOptions>? choiceOptions;
  final int minQty;
  final int calculablePrice;
  final String currencySymbol;
  final int currentStock;
  final List<String>? tags;
  final int rating;
  final int sales;
  final bool isDigital;
  final bool isWishlist;
  final int sellerId;
  final int countReviews;
  final String soldByType;
  final String soldByName;
  final Shop shop;
  final List<Reviews>? reviews;
  final bool isResale;
  final int resellerId;
  final Category category;
  final BrandDomainModel brand;
  final String description;
  final String? videoProvider;
  final String? videoLink;
  final String categoryName;
  final String brandName;

  ProductDetailsDomainModel({
    required this.id,
    required this.name,
    required this.thumbnailImage,
    required this.isMultiple,
    required this.priceHighLowDiscount,
    required this.priceHighLow,
    required this.hasDiscount,
    required this.discount,
    required this.strokedPrice,
    required this.mainPrice,
    this.choiceOptions,
    required this.minQty,
    required this.calculablePrice,
    required this.currencySymbol,
    required this.currentStock,
    this.tags,
    required this.rating,
    required this.sales,
    required this.isDigital,
    required this.isWishlist,
    required this.sellerId,
    required this.countReviews,
    required this.soldByType,
    required this.soldByName,
    required this.shop,
    this.reviews,
    required this.isResale,
    required this.resellerId,
    required this.category,
    required this.brand,
    required this.description,
     this.videoProvider,
     this.videoLink,
    required this.categoryName,
    required this.brandName,
  });
}
