import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetVariantPrice extends UseCase<Product?, VariantPriceParams> {
  @override
  Future<Product?> call(VariantPriceParams params) async {
    var result = await getIt<ProductsRepository>().getVariantPrice(params);
    return result.fold((l) => null, (r) => r);
  }
}
