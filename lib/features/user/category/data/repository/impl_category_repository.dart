import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/data/data_sources/category_data_sources.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/category_domain_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class ImplCategoryRepository extends CategoryRepository with ModelToDomain {
  @override
  Future<Either<Failure, List<BrandDomainModel>>> getBrands(BrandsParams params) async {
    var result = await  dataSources.getBrands(params);
    return toDomainResultList<BrandDomainModel, BrandModel>(result);
  }
  @override
  Future<Either<Failure, List<CategoryDomainModel>>> getAllCategories(
      bool param) async {
    var countries = await getIt<CategoryDataSources>().getAllCategories(param);
    return toDomainResultList(countries);
  }


}

