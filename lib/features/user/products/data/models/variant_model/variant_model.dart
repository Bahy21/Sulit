import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/variant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_model.freezed.dart';

part 'variant_model.g.dart';

@freezed
@immutable
class VariantModel extends BaseApiModel<Variant> with _$VariantModel {
  const VariantModel._();

  @JsonSerializable(explicitToJson: true)
  const factory VariantModel({
    required int id,
    required String name,
    @JsonKey(name: "stroked_price") required double strokedPrice,
    @JsonKey(name: "calculable_price") required double calculablePrice,
    @JsonKey(name: "main_price") required String mainPrice,
    @JsonKey(name: "current_stock") required double currentStock,
    @JsonKey(name: "currency_symbol") required String currencySymbol,
    required String image,
    required String options,
  }) = _VariantModel;

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);

  @override
  Variant toDomainModel() {
    return Variant(
      id: id,
      name: name,
      strokedPrice: strokedPrice,
      calculablePrice: calculablePrice,
      mainPrice: mainPrice,
      currentStock: currentStock,
      currencySymbol: currencySymbol,
      image: image,
      options: options,
    );
  }
}
