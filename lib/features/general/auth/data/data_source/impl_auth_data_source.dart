import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource extends AuthDataSource {}
