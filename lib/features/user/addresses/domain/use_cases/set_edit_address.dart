import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/edit_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class SetEditAddress implements UseCase<bool, EditAddressParams> {
  @override
  Future<bool> call(EditAddressParams params) async {
    var result = await getIt<AddressesRepository>().editAddress(params);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
