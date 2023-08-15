// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/products_data_source.dart';
import 'package:flutter_tdd/features/user/products/data/models/home_model/home_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_details_model/product_details_model.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsDataSource)
class ImplProductsDataSource extends ProductsDataSource {
  @override
  Future<Either<Failure, HomeModel>> getHome(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getHome,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data["data"],
      showLoader: false,
      refresh: param,
      toJsonFunc: (json) => HomeModel.fromJson(json),
    );
    return await GenericHttpImpl<HomeModel>()(model);
  }

  @override
  Future<Either<Failure, ProductDetailsModel>> getProductDetails(
      GenericParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getProductDetails + param.paramToQuery(),
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data["data"],
      showLoader: false,
      refresh: param.refresh,
      toJsonFunc: (json) => ProductDetailsModel.fromJson(json),
    );
    return await GenericHttpImpl<ProductDetailsModel>()(model);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getPopularProducts(
      PopularProductsParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getPopularProducts + param.paramToQuery(),
      requestMethod: RequestMethod.get,
      refresh: param.refresh,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<ProductModel>.from(
        json.map((e) => ProductModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["section_products"]["products"],
    );
    return await GenericHttpImpl<List<ProductModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> toggleFavourite(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.toggleWishlist(param),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["key"] == 'success',
    );
    return await GenericHttpImpl<bool>().call(model);
  }
}
