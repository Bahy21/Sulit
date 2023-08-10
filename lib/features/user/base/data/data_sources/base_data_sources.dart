import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';

abstract class BaseDataSources {
  Future<Either<Failure, bool>> logOut ();
}