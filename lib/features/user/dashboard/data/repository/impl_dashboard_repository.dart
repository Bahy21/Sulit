import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/dashboard_data_sources.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/models/dashboards.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/repository/dashboard_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DashboardRepository)
class ImplDashboardRepository extends DashboardRepository with ModelToDomain {
  @override
  Future<Either<Failure, Dashboards>> getDashboard(bool param) async {
    var result = await getIt<DashboardDataSources>().getDashboard(param);
    return toDomainResult(result);
  }
}
