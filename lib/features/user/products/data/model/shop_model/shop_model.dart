import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_model.freezed.dart';

part 'shop_model.g.dart';

@freezed
@immutable
class ShopModel extends BaseApiModel<Shop> with _$ShopModel {
  const ShopModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShopModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'logo') required String logo,
    @JsonKey(name: 'package_invalid_at') required String packageInvalidAt,
    @JsonKey(name: 'products') required int products,
    @JsonKey(name: 'orders') required int orders,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'phone') required String? phone,
    @JsonKey(name: 'facebook') required String? facebook,
    @JsonKey(name: 'google') required String? google,
    @JsonKey(name: 'twitter') required String? twitter,
    @JsonKey(name: 'instagram') required String? instagram,
    @JsonKey(name: 'youtube') required String? youtube,
    @JsonKey(name: 'rating') required int rating,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);

  @override
  Shop toDomainModel() {
    return Shop(
      id: id,
      name: name,
      products: products,
      logo: logo,
      rating: rating,
      description: description,
      title: title,
      address: address,
      userId: userId,
      orders: orders,
      packageInvalidAt: packageInvalidAt,
      email: email,
      phone: phone,
      facebook: facebook,
      google: google,
      instagram: instagram,
      twitter: twitter,
      youtube: youtube,
    );
  }
}
