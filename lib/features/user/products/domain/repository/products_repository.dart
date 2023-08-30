import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/send_query_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/queries.dart';

abstract class ProductsRepository {
  Future<Either<Failure, HomeDomainModel>> getHome(bool param);
  Future<Either<Failure, ProductDetailsDomainModel>> getProductDetails(GenericParams param);
  Future<Either<Failure, List<Product>>> getPopularProducts(PopularProductsParams param);
  Future<List<ProductsTableData>> getItems();
  Future<Either<Failure, bool>> toggleFavourite(int param);
  Future<Either<Failure,Queries>>sendQuery(SendQueryParams params);
  Future<Either<Failure, Product>> getVariantPrice(VariantPriceParams param);
  Future<Either<Failure, List<Product>>> getDigitalProducts(bool param);

}