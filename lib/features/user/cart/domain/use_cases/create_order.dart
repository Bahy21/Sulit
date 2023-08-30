import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class CreateOrder implements UseCase<OrderSummaryModel?, CreateOrderParams> {
  @override
  Future<OrderSummaryModel?> call(CreateOrderParams params) async {
    var result = await getIt<CartRepository>().createOrder(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
