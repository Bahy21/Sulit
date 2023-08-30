import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetDigitalProducts extends UseCase<List<Product>, bool> {
  @override
  Future<List<Product>> call(bool params) async {
    var result = await getIt<ProductsRepository>().getDigitalProducts(params);
    return result.fold((l) => [], (r) => r);
  }
}
