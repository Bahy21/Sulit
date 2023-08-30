import 'package:flutter_tdd/features/user/cart/data/models/summary_model/summary_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';

part 'order_summary_model.freezed.dart';
part 'order_summary_model.g.dart';

@freezed
@immutable
class OrderSummaryModel extends BaseApiModel<OrderSummary>  with _$OrderSummaryModel{
  const OrderSummaryModel._();
  @JsonSerializable(explicitToJson: true)
  const factory OrderSummaryModel({
    @JsonKey(name: 'order_summary') required SummaryModel orderSummary,
    @JsonKey(name: 'section_orders') required List<OrderModel> sectionOrders,
  }) = _OrderSummaryModel;


  factory OrderSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryModelFromJson(json);

  @override
  OrderSummary toDomainModel() {
    return OrderSummary(summary: orderSummary.toDomainModel(), sectionOrders: sectionOrders);
  }


}
