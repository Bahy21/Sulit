import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order.dart';

abstract class PurchasingRepository {
  Future<Either<Failure, List<OrderDomianModel>>> getPurchaseHistory(bool param);
  Future<Either<Failure, OrderDomianModel>> trackOrder (String param);
}