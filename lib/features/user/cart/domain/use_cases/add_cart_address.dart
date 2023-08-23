import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class AddCartAddress implements UseCase<bool, int> {
  @override
  Future<bool> call(int param) async {
    var result = await getIt<CartRepository>().addCartAddress(param);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
