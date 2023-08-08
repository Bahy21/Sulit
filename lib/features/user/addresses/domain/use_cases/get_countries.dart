import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class GetCountries implements UseCase<List<Country>, bool> {
  @override
  Future<List<Country>> call(bool param) async {
    var result = await getIt<AddressesRepository>().getCountries(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
