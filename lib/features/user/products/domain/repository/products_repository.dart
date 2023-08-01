import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_entity.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_domain_model.dart';


abstract class ProductsRepository {
  Future<Either<Failure, HomeDomainModel>> getHome(bool param);
  Future<Either<Failure, List<ProductDomainModel>>> getPopularProducts(PopularProductsEntity param);

}