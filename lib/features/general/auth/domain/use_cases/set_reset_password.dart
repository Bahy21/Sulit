import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/reset_password_entity.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetResetPassword extends UseCase<String, ResetPasswordEntity> {
  @override
  Future<String> call(ResetPasswordEntity params) async {
    var result = await getIt<AuthRepository>().resetPassword(params);
    return result.fold((l) => "", (r) => r);
  }
}
