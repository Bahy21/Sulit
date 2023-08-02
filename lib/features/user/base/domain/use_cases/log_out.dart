import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart';

class SetLogout implements UseCase<bool, NoParams> {
  @override
  Future<bool> call(NoParams params) async {
    var result = await getIt.get<BaseRepository>().logOut();
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
