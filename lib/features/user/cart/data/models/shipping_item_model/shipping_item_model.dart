import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_item_model.freezed.dart';

part 'shipping_item_model.g.dart';

@freezed
@immutable
class ShippingItemModel extends BaseApiModel<ShippingItem>
    with _$ShippingItemModel {
  const ShippingItemModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShippingItemModel(
      {required String name,
      required int quantity,
      required String total}) = _ShippingItemModel;

  factory ShippingItemModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingItemModelFromJson(json);

  @override
  ShippingItem toDomainModel() {
    return ShippingItem(
      name: name,
      quantity: quantity,
      total: total,
    );
  }
}
