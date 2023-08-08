import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class GetCitiesByStateId implements UseCase<List<City>, int> {
  @override
  Future<List<City>> call(int param) async {
    var result = await getIt<AddressesRepository>().getCitiesByStateId(param);
    return result.fold((l) => [], (r) => r);
  }
}
