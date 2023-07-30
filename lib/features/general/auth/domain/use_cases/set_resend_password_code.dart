import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetResendPasswordCode extends UseCase<String, String> {
  @override
  Future<String> call(String params) async {
    var result = await getIt<AuthRepository>().resendPasswordCode(params);
    return result.fold((l) => "", (r) => r);
  }
}
