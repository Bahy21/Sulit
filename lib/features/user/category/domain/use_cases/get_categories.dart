import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';

class GetCategories extends UseCase<List<Category>, bool> {
  @override
  Future<List<Category>> call(bool params) async {
    var result = await getIt<CategoryRepository>().getAllCategories(params);
    return result.fold((l) => [], (r) => r);
  }
}
