// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WalletDataSources)
class ImplWalletDataSources extends WalletDataSources {
  @override
  Future<Either<Failure, WalletModel>> getMyWallet(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.myWallet,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      refresh: param,
      toJsonFunc: (data) => WalletModel.fromJson(data),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<WalletModel>().call(model);
  }
}