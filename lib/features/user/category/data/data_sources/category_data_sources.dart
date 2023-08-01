import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brands_params.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';

abstract class CategoryDataSources{
  Future<Either<Failure, List<CategoryModel>>> getAllCategories(bool param);
  Future<Either<Failure, List<BrandModel>>> getBrands (BrandsParams params);
}