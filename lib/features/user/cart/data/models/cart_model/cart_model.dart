import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';

part 'cart_model.g.dart';

@freezed
@immutable
class CartModel extends BaseApiModel<CartDomainModel> with _$CartModel {
  const CartModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartModel({
    required List<CartItemModel> items ,
    @JsonKey(name: "sub_total") required String subTotal,
    @JsonKey(name: "calculable_total") required int calculableTotal,
    @JsonKey(name: "currency_symbol") required String currencySymbol,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);

  @override
  CartDomainModel toDomainModel() {
    return CartDomainModel(
      items: items.map((e) => e.toDomainModel()).toList(),
      subTotal: subTotal,
      calculableTotal: calculableTotal,
      currencySymbol: currencySymbol,
    );
  }
}
