import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class SetToggleFavourite implements UseCase<bool, int> {
  @override
  Future<bool> call(int param) async {
    var result = await getIt<ProductsRepository>().toggleFavourite(param);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
