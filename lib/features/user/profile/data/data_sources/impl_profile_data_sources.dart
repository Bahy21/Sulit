
// ignore_for_file: avoid_dynamic_calls
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/user/profile/data/data_sources/profile_data_sources.dart';
import 'package:flutter_tdd/features/user/profile/domain/entities/profile_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileDataSources)
class ImplProfileDataSources extends ProfileDataSources   {
  @override
  Future<Either<Failure, UserModel>> updateProfile(ProfileParams params) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateProfile,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data["data"]["user"],
      requestBody: params.toJson(),
      showLoader: true,
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }
}