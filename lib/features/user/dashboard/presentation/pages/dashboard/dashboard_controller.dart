part of 'dashboard_imports.dart';

class DashboardController {
  final GenericBloc<Dashboards?> dashboardsCubit = GenericBloc(null);

  DashboardController() {
    getDashboards(refresh: false);
    getDashboards();
  }

  void getDashboards({bool refresh = true}) async {
    var result = await GetDashboards().call(refresh);
    dashboardsCubit.onUpdateData(result);
  }
}
