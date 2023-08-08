import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_queries_model/product_queries_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/main_product_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_product_details_model.freezed.dart';

part 'main_product_details_model.g.dart';

@freezed
@immutable
class MainProductDetailsModel extends BaseApiModel<MainProductDetails>
    with _$MainProductDetailsModel {
  const MainProductDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory MainProductDetailsModel({
    required ProductModel product,
    @JsonKey(name: 'related_products') required List<ProductModel> relatedProducts,
    @JsonKey(name: 'top_products') required List<ProductModel> topProducts,
    @JsonKey(name: 'product_queries') required ProductQueriesModel productQueries,
  }) = _MainProductDetailsModel;

  factory MainProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MainProductDetailsModelFromJson(json);

  @override
  MainProductDetails toDomainModel() {
    return MainProductDetails(
      product: product.toDomainModel(),
      productQueries: productQueries.toDomainModel(),
      relatedProducts: relatedProducts.map((e) => e.toDomainModel()).toList(),
      topProducts: topProducts.map((e) => e.toDomainModel()).toList(),
    );
  }
}
