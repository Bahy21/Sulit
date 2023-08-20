// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_model/cart_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/coupon_response_model/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
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

  @override
  Future<Either<Failure, ShippingModel>> cartStoreShipping(List<Map> params) async  {
    var param = json.encode(params);
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cartStoreShipping,
      requestBody: {"shipping_info": param},
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => ShippingModel.fromJson(data),
      responseKey: (data)=> data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<ShippingModel>().call(model);
  }

  @override
  Future<Either<Failure, CouponResponseModel>> applyCoupon(String param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.applyCoupon,
      requestBody: {"code": param},
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      refresh: true,
      showLoader: true,
      toJsonFunc: (data) => CouponResponseModel.fromJson(data),
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<CouponResponseModel>().call(model);
  }
}