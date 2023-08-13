import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_phone_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetVerifyPhone implements UseCase<bool, VerifyPhoneParams> {
  @override
  Future<bool> call(VerifyPhoneParams params) async {
    var result = await getIt<AuthRepository>().verifyPhone(params);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
