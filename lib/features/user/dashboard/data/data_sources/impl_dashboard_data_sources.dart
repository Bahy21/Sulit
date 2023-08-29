import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/dashboard_data_sources.dart';
import 'package:flutter_tdd/features/user/dashboard/data/models/dashboards_model/dashboards_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DashboardDataSources)
class ImplDashboardDataSources extends DashboardDataSources {
  @override
  Future<Either<Failure, DashboardsModel>> getDashboard(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getDashboard,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data["data"],
      showLoader: false,
      refresh: param,
      toJsonFunc: (json) => DashboardsModel.fromJson(json),
    );
    return await GenericHttpImpl<DashboardsModel>()(model);
  }
}
