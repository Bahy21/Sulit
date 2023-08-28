import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class DeleteItemFormCart implements UseCase<bool, DeleteCartItemParams> {
  @override
  Future<bool> call(DeleteCartItemParams params) async {
    var result = await getIt<CartRepository>().deleteCartItem(params);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
