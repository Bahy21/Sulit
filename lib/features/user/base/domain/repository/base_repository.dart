import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet.dart';

abstract class BaseRepository{
  Future<Either<Failure, bool>> logOut ();

}