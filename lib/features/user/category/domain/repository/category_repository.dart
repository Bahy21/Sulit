import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brand_details_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brands_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/search_products_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/sub_category_params.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/sub_category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<Category>>> getAllCategories(bool param);
  Future<Either<Failure, SubCategory>> getSubCategories(SearchProductsParams params);
  Future<Either<Failure, List<BrandDomainModel>>> getBrands(BrandsParams params);
  Future<Either<Failure, List<Product>>> getBrandProducts (BrandDetailsParams params);
  Future<Either<Failure, List<Product>>> getCategoryProducts (SearchProductsParams params);

}