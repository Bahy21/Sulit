import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/data/model/home_model/home_model.dart';

abstract class ProductsDataSource{
  Future<Either<Failure, HomeModel>> getHome(bool param);
}