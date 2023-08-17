// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/addresses/data/models/address_model/address_model.dart';
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_model/cart_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartDataSources)
class ImplCartDataSources extends CartDataSources {
  @override
  Future<Either<Failure, CartModel>> getCartItems(GetCartItemsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cart,
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => CartModel.fromJson(json),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<CartModel>().call(model);
  }

  @override
  Future<Either<Failure, bool>> addCartAddress(int param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addCartAddress,
      requestBody: {"address_id": param},
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data)=> data["key"] == "success",
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

}