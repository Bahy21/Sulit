import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetLogin extends UseCase<UserDomainModel?, LoginParams> {
  @override
  Future<UserDomainModel?> call(LoginParams params) async {
    var result = await getIt<AuthRepository>().login(params);
    if (result.isRight()) {
      return result.fold((l) => null, (r) => r);
    }
    return null;
  }
}
