import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/products_data_source.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsRepository)
class ImplProductsRepository extends ProductsRepository with ModelToDomain {
  var dataSources = getIt<ProductsDataSource>();

  @override
  Future<Either<Failure, HomeDomainModel>> getHome(bool param) async {
    var result = await dataSources.getHome(param);
    return toDomainResult(result);
  }
}
