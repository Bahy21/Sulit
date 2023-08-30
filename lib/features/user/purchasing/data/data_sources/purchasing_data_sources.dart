import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';

abstract class PurchasingDataSources {
  Future<Either<Failure, List<OrderModel>>> getPurchaseHistory(bool param);
  Future<Either<Failure, OrderModel>> trackOrder (String param);
}