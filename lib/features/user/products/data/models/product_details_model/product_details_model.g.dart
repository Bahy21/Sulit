// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsModel _$$_ProductDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsModel(
      id: json['id'] as int,
      name: json['name'] as String,
      thumbnailImage: json['thumbnail_image'] as String,
      isMultiple: json['is_multiple'] as bool,
      priceHighLowDiscount: json['price_high_low_discount'] as String,
      priceHighLow: json['price_high_low'] as String,
      hasDiscount: json['has_discount'] as bool,
      discount: json['discount'] as String,
      strokedPrice: json['stroked_price'] as String,
      mainPrice: json['main_price'] as String,
      choiceOptions: (json['choice_options'] as List<dynamic>?)
          ?.map((e) => ProductOptionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      minQty: json['min_qty'] as int,
      calculablePrice: json['calculable_price'] as int,
      currencySymbol: json['currency_symbol'] as String,
      currentStock: json['current_stock'] as int,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: json['rating'] as int,
      sales: json['sales'] as int,
      isDigital: json['is_digital'] as bool,
      isWishlist: json['is_wishlist'] as bool,
      sellerId: json['seller_id'] as int,
      countReviews: json['count_reviews'] as int,
      soldByType: json['sold_by_type'] as String,
      soldByName: json['sold_by_name'] as String,
      shop: ShopModel.fromJson(json['shop'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isResale: json['is_resale'] as bool,
      resellerId: json['reseller_id'] as int,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      brand: BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      description: json['description'] as String,
      videoProvider: json['video_provider'] as String?,
      videoLink: json['video_link'] as String?,
      categoryName: json['category_name'] as String,
      brandName: json['brand_name'] as String,
    );

Map<String, dynamic> _$$_ProductDetailsModelToJson(
        _$_ProductDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail_image': instance.thumbnailImage,
      'is_multiple': instance.isMultiple,
      'price_high_low_discount': instance.priceHighLowDiscount,
      'price_high_low': instance.priceHighLow,
      'has_discount': instance.hasDiscount,
      'discount': instance.discount,
      'stroked_price': instance.strokedPrice,
      'main_price': instance.mainPrice,
      'choice_options': instance.choiceOptions?.map((e) => e.toJson()).toList(),
      'min_qty': instance.minQty,
      'calculable_price': instance.calculablePrice,
      'currency_symbol': instance.currencySymbol,
      'current_stock': instance.currentStock,
      'tags': instance.tags,
      'rating': instance.rating,
      'sales': instance.sales,
      'is_digital': instance.isDigital,
      'is_wishlist': instance.isWishlist,
      'seller_id': instance.sellerId,
      'count_reviews': instance.countReviews,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldByName,
      'shop': instance.shop.toJson(),
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'is_resale': instance.isResale,
      'reseller_id': instance.resellerId,
      'category': instance.category.toJson(),
      'brand': instance.brand.toJson(),
      'description': instance.description,
      'video_provider': instance.videoProvider,
      'video_link': instance.videoLink,
      'category_name': instance.categoryName,
      'brand_name': instance.brandName,
    };
