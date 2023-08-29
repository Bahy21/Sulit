import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/purchasing_data_sources.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PurchasingRepository)
class ImplPurchasingRepository extends PurchasingRepository with ModelToDomain{
  var dataSource = getIt<PurchasingDataSources>();
  @override
  Future<Either<Failure, List<OrderDomianModel>>> getPurchaseHistory(bool param)async {
    var result = await dataSource.getPurchaseHistory(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, OrderDomianModel>> trackOrder(String param)async {
    var result = await dataSource.trackOrder(param);
    return toDomainResult(result);
  }


}