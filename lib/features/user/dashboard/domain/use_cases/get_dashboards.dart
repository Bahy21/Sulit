import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/models/dashboards.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/repository/dashboard_repository.dart';

class GetDashboards extends UseCase<Dashboards?, bool> {
  @override
  Future<Dashboards?> call(bool params) async {
    var result = await getIt<DashboardRepository>().getDashboard(params);
    if (result.isRight()) {
      return result.fold((l) => null, (r) => r);
    }
    return null;
  }
}
