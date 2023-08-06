import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brands_params.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';

class GetBrands implements UseCase<List<BrandDomainModel>, BrandsParams> {
  @override
  Future<List<BrandDomainModel>> call(BrandsParams params) async {
    var result = await getIt<CategoryRepository>().getBrands(params);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
