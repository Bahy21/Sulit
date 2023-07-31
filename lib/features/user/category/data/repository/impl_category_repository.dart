import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CategoryRepository)
class ImplCategoryRepository extends CategoryRepository {}