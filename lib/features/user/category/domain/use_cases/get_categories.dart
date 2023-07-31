import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/category_domain_model.dart';

class GetCategories extends UseCase<List<CategoryDomainModel>, bool> {
  @override
  Future<List<CategoryDomainModel>> call(bool params) async {
    var result = await getIt<CategoryRepository>().getAllCategories(params);
    return result.fold((l) => [], (r) => r);
  }
}
