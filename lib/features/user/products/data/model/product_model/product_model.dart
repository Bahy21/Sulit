import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
@immutable
class ProductModel extends BaseApiModel<ProductDomainModel>
    with _$ProductModel {
  const ProductModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    @JsonKey(name: 'discount') required String discount,
    @JsonKey(name: 'stroked_price') required String strokedPrice,
    @JsonKey(name: 'main_price') required String mainPrice,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'sales') required int sales,
    @JsonKey(name: 'seller_id') required int sellerId,
    @JsonKey(name: 'is_resale') required bool isResale,
    @JsonKey(name: 'reseller_id') required int resellerId,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  @override
  ProductDomainModel toDomainModel() {
    return ProductDomainModel(
      name: name,
      id: id,
      discount: discount,
      hasDiscount: hasDiscount,
      isResale: isResale,
      mainPrice: mainPrice,
      rating: rating,
      resellerId: resellerId,
      sales: sales,
      sellerId: sellerId,
      strokedPrice: strokedPrice,
      thumbnailImage: thumbnailImage,
    );
  }
}
