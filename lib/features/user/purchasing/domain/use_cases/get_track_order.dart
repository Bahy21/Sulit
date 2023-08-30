import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetTrackOrder implements UseCase<OrderDomianModel?, String>  {
  @override
  Future<OrderDomianModel?> call(String param)async {
    var result = await getIt<PurchasingRepository>().trackOrder(param);
    return result.fold((l) => null, (r) => r);
  }
}