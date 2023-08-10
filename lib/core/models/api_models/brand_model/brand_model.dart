import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
@immutable
class BrandModel extends BaseApiModel<BrandDomainModel> with _$BrandModel {
  const BrandModel._();

  @JsonSerializable(explicitToJson: true)
  const factory BrandModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'logo') required String logo,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);

  @override
  BrandDomainModel toDomainModel() {
    return BrandDomainModel(
      id: id,
      name: name,
      logo: logo,
    );
  }
}
