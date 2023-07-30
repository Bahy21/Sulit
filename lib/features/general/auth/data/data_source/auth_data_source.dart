import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_entity.dart';

abstract class AuthDataSource{
  Future<Either<Failure, UserModel>> login(LoginEntity param);
  Future<Either<Failure, UserModel>> register (UserRegisterParams params);
}