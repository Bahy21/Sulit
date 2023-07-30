import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class ImplAuthRepository extends AuthRepository {}
