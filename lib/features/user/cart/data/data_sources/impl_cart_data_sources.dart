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
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/seller_shipping_model/seller_shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartDataSources)
class ImplCartDataSources extends CartDataSources {
  @override
  Future<Either<Failure, CartModel>> getCartItems(GetCartItemsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: params.toQuery(),
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

  @override
  Future<Either<Failure, OrderSummaryModel>> createOrder(CreateOrderParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.storeOrders,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (data) => OrderSummaryModel.fromJson(data),
      responseKey: (data)=> data['data'],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<OrderSummaryModel>().call(model);
  }
  @override
  Future<Either<Failure, String>> addToCart (AddProductToCartParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.storeProductToCart,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: params.toJson(),
      responseKey: (data) => data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, bool>> deleteCartItem(DeleteCartItemParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cart + params.toQuery(),
      requestBody: params.toJson(),
      requestMethod: RequestMethod.delete,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data)=> data["key"] == "success",
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, CartModel>> updateCartItem(UpdateCartItemParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: params.toQuery(),
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => CartModel.fromJson(data),
      responseKey: (data)=> data['data'],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<CartModel>().call(model);
  }

  @override
  Future<Either<Failure, List<SellerShippingModel>>> getShippingInfo(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cartShippingInfo,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<SellerShippingModel>.from(
        json.map(
              (e) => SellerShippingModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<SellerShippingModel>>().call(model);
  }
}