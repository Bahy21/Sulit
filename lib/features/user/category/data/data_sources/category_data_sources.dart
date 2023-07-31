import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';

abstract class CategoryDataSources{
  Future<Either<Failure, List<CategoryModel>>> getAllCategories(bool param);

}