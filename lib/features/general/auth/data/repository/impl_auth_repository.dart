import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_entity.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/reset_password_entity.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class ImplAuthRepository extends AuthRepository with ModelToDomain {
  var dataSources = getIt<AuthDataSource>();

  @override
  Future<Either<Failure, UserDomainModel>> register(UserRegisterParams params) async {
    var result = await dataSources.register(params);
    return toDomainResult(result);
  }
  @override
  Future<Either<Failure, UserDomainModel>> login(LoginEntity param) async {
    var result = await getIt.get<AuthDataSource>().login(param);
    return toDomainResult<UserDomainModel, UserModel>(result);
  }

  @override
  Future<Either<Failure, String>> forgetPassword(String param) async {
    return await getIt.get<AuthDataSource>().forgetPassword(param);
  }

  @override
  Future<Either<Failure, String>> resendPasswordCode(String param) async {
    return await getIt.get<AuthDataSource>().resendPasswordCode(param);
  }

  @override
  Future<Either<Failure, String>> resetPassword(ResetPasswordEntity param) async {
    return await getIt.get<AuthDataSource>().resetPassword(param);
  }
}
