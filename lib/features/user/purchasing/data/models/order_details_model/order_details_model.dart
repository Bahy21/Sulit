import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_model.freezed.dart';

part 'order_details_model.g.dart';

@freezed
@immutable
class OrderDetailsModel extends BaseApiModel<OrderDetails>
    with _$OrderDetailsModel {
  const OrderDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderDetailsModel(
      {required int id,
      required String variation,
      required int quantity,
      @JsonKey(name: 'delivery_type') required String deliveryType,
      required String price}) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  @override
  OrderDetails toDomainModel() {
    return OrderDetails(
      id: id,
      variation: variation,
      quantity: quantity,
      deliveryType: deliveryType,
      price: price,
    );
  }
}
