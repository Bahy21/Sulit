import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/category_domain_model.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<CategoryDomainModel>>> getAllCategories(bool param);

}