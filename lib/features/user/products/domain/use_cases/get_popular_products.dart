import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_entity.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetPopularProducts
    extends UseCase<List<ProductDomainModel>, PopularProductsEntity> {
  @override
  Future<List<ProductDomainModel>> call(PopularProductsEntity params) async {
    var result = await getIt<ProductsRepository>().getPopularProducts(params);
    return result.fold((l) => [], (r) => r);
  }
}
