import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class SetCartStoreShipping implements UseCase<Shipping?, List<Map>> {
  @override
  Future<Shipping?> call(List<Map> params) async {
    var result = await getIt<CartRepository>().cartStoreShipping(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
