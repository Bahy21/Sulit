import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/data/data_sources/category_data_sources.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryDataSources)
class ImplCategoryDataSources extends CategoryDataSources {
  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories(
      bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getCategories,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => List<CategoryModel>.from(
        json.map((e) => CategoryModel.fromJson(e)),
      ),
    );
    return await GenericHttpImpl<List<CategoryModel>>()(model);
  }
}
