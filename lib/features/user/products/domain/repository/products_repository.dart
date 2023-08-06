import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';


abstract class ProductsRepository {
  Future<Either<Failure, HomeDomainModel>> getHome(bool param);
  Future<Either<Failure, List<Product>>> getPopularProducts(PopularProductsParams param);

}