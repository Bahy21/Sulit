// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';
import 'package:injectable/injectable.dart';
import 'purchasing_data_sources.dart';

@Injectable(as: PurchasingDataSources)
class ImplPurchasingDataSources extends PurchasingDataSources {
  @override
  Future<Either<Failure, List<OrderModel>>> getPurchaseHistory(bool param) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getPurchaseHistory ,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<OrderModel>.from(
        json.map((e) => OrderModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["orders"],
    );
    return await GenericHttpImpl<List<OrderModel>>().call(model);
  }

  @override
  Future<Either<Failure, OrderModel>> trackOrder(String param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getTrackOrder(param) ,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => OrderModel.fromJson(json),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<OrderModel>().call(model);
  }
}