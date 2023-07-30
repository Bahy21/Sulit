import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_entity.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';

abstract class AuthRepository{
  Future<Either<Failure, UserDomainModel>> register (UserRegisterParams params);
  Future<Either<Failure, UserDomainModel>> login(LoginEntity param);

}