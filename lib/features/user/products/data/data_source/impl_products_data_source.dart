import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/products_data_source.dart';
import 'package:flutter_tdd/features/user/products/data/model/home_model/home_model.dart';
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
}
