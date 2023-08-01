
// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart';
import 'package:flutter_tdd/features/user/sale/data/models/flash_sale_model/flash_sale_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SaleDataSources)
class ImplSaleRepository extends SaleDataSources {
  @override
  Future<Either<Failure, List<FlashSaleModel>>> getAllFlashSales(bool param)async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getBrands,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<FlashSaleModel>.from(
        json.map(
              (e) => FlashSaleModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"]["brands"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<FlashSaleModel>>().call(model);
  }
}