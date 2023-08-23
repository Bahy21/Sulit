import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/banner_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
@immutable
class BannerModel extends BaseApiModel<BannerDomainModel> with _$BannerModel {
  const BannerModel._();

  @JsonSerializable(explicitToJson: true)
  const factory BannerModel({
    @JsonKey(name: "photo") required String photo,
    @JsonKey(name: "url") String? url,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  @override
  BannerDomainModel toDomainModel() {
    return BannerDomainModel(photo: photo, url: url);
  }
}
