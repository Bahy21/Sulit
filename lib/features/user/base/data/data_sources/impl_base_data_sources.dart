// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseDataSources)
class ImplBaseDataSources extends BaseDataSources {
  @override
  Future<Either<Failure, bool>> logOut()async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.logout,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["key"] == 'success',
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }



}