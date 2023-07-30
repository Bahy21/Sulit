import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetUserRegister implements UseCase<UserDomainModel?, UserRegisterParams> {
  @override
  Future<UserDomainModel?> call(UserRegisterParams params) async {
    var result = await getIt<AuthRepository>().register(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
