import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/home_model/home_model.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_entity.dart';

abstract class ProductsDataSource{
  Future<Either<Failure, HomeModel>> getHome(bool param);
  Future<Either<Failure, List<ProductModel>>> getPopularProducts(PopularProductsEntity param);

}