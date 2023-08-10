import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart';
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository{
  var dataSources = getIt<BaseDataSources>();
  @override
  Future<Either<Failure, bool>> logOut() async {
    return await dataSources.logOut();
  }

}