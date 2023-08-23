import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetPurchasingHistory implements UseCase<List<OrderDomianModel>, bool> {
  @override
  Future<List<OrderDomianModel>> call(bool param) async {
    var result = await getIt<PurchasingRepository>().getPurchaseHistory(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
