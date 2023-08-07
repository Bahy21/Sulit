import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class SetDefaultAddress implements UseCase<bool, int> {
  @override
  Future<bool> call(int param) async {
    var result = await getIt<AddressesRepository>().setDefaultAddress(param);
    return result.fold((l) => false, (r) => r);
  }
}
