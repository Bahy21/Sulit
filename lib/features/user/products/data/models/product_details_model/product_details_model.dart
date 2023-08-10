import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_options_model/product_options_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';

part 'product_details_model.g.dart';

@freezed
@immutable
class ProductDetailsModel extends BaseApiModel<ProductDetailsDomainModel>
    with _$ProductDetailsModel {
  const ProductDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductDetailsModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
    @JsonKey(name: 'is_multiple') required bool isMultiple,
    @JsonKey(name: 'price_high_low_discount') required String priceHighLowDiscount,
    @JsonKey(name: 'price_high_low') required String priceHighLow,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    @JsonKey(name: 'discount') required String discount,
    @JsonKey(name: 'stroked_price') required String strokedPrice,
    @JsonKey(name: 'main_price') required String mainPrice,
    @JsonKey(name: 'choice_options')
        required List<ProductOptionsModel>? choiceOptions,
    @JsonKey(name: 'min_qty') required int minQty,
    @JsonKey(name: 'calculable_price') required int calculablePrice,
    @JsonKey(name: 'currency_symbol') required String currencySymbol,
    @JsonKey(name: 'current_stock') required int currentStock,
    @JsonKey(name: 'tags') required List<String>? tags,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'sales') required int sales,
    @JsonKey(name: 'is_digital') required bool isDigital,
    @JsonKey(name: 'is_wishlist') required bool isWishlist,
    @JsonKey(name: 'seller_id') required int sellerId,
    @JsonKey(name: 'count_reviews') required int countReviews,
    @JsonKey(name: 'sold_by_type') required String soldByType,
    @JsonKey(name: 'sold_by_name') required String soldByName,
    @JsonKey(name: 'shop') required ShopModel shop,
    @JsonKey(name: 'reviews') required List<ReviewsModel>? reviews,
    @JsonKey(name: 'is_resale') required bool isResale,
    @JsonKey(name: 'reseller_id') required int resellerId,
    @JsonKey(name: 'category') required CategoryModel category,
    @JsonKey(name: 'brand') required BrandModel brand,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'video_provider') String? videoProvider,
    @JsonKey(name: 'video_link') String? videoLink,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'brand_name') required String brandName,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);

  @override
  ProductDetailsDomainModel toDomainModel() {
    return ProductDetailsDomainModel(
      description: description,
      id: id,
      rating: rating,
      name: name,
      category: category.toDomainModel(),
      thumbnailImage: thumbnailImage,
      strokedPrice: strokedPrice,
      sellerId: sellerId,
      sales: sales,
      resellerId: resellerId,
      mainPrice: mainPrice,
      hasDiscount: hasDiscount,
      discount: discount,
      brand: brand.toDomainModel(),
      brandName: brandName,
      calculablePrice: calculablePrice,
      categoryName: categoryName,
      countReviews: countReviews,
      currencySymbol: currencySymbol,
      currentStock: currentStock,
      isDigital: isDigital,
      isMultiple: isMultiple,
      isResale: isResale,
      isWishlist: isWishlist,
      minQty: minQty,
      priceHighLow: priceHighLow,
      priceHighLowDiscount: priceHighLowDiscount,
      shop: shop.toDomainModel(),
      soldByName: soldByName,
      soldByType: soldByType,
      reviews: reviews?.map((e) => e.toDomainModel()).toList(),
      choiceOptions: choiceOptions?.map((e) => e.toDomainModel()).toList(),
      tags: tags,
      videoLink: videoLink,
      videoProvider: videoProvider,
    );
  }
}
