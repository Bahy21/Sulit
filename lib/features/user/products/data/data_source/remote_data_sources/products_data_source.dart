import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/home_model/home_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_details_model/product_details_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/queries_model/queries_model.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/send_query_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';

abstract class ProductsDataSource{
  Future<Either<Failure, HomeModel>> getHome(bool param);
  Future<Either<Failure, ProductDetailsModel>> getProductDetails(GenericParams param);
  Future<Either<Failure, List<ProductModel>>> getPopularProducts(PopularProductsParams param);
  Future<Either<Failure, bool>> toggleFavourite(int param);
  Future<Either<Failure,QueriesModel>>sendQuery(SendQueryParams params);
  Future<Either<Failure, ProductModel>> getVariantPrice(VariantPriceParams param);
  Future<Either<Failure, List<ProductModel>>> getDigitalProducts(bool param);

}