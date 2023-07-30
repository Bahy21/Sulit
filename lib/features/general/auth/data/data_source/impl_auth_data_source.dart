// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_entity.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource extends AuthDataSource {
  @override
  Future<Either<Failure, UserModel>> login(LoginEntity param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.login,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data["data"]["user"],
      requestBody: param.toJson(),
      showLoader: false,
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<Either<Failure, UserModel>> register (UserRegisterParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.register,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      requestBody: params.toJson(),
      showLoader: true,
      responseKey: (data) => data["data"]["user"],
      toJsonFunc: (json)=> UserModel.fromJson(json),
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<UserModel>().call(model);
  }
}

