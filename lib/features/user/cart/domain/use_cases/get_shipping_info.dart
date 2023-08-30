import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class GetShippingInfo implements UseCase<List<SellerShipping>, bool> {
  @override
  Future<List<SellerShipping>> call(bool param) async {
    var result = await getIt<CartRepository>().getShippingInfo(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
