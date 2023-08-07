// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/models/api_models/city_model/city_model.dart';
import 'package:flutter_tdd/core/models/api_models/country_model/country_model.dart';
import 'package:flutter_tdd/core/models/api_models/state_model/state_model.dart';
import 'package:flutter_tdd/features/user/addresses/data/data_sources/addresses_data_sources.dart';
import 'package:flutter_tdd/features/user/addresses/data/models/address_model/address_model.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/add_address_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as :AddressesDataSources)
class ImplAddressesDataSources extends AddressesDataSources{
  @override
  Future<Either<Failure, List<AddressModel>>> getAddress(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.userAddresses,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<AddressModel>.from(
        json.map(
              (e) => AddressModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"]["addresses"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<AddressModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> addNewAddress(AddAddressParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addUserAddress,
      requestMethod: RequestMethod.post,
      requestBody: params.toJson(),
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data)=> params.isSuccess(data),
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, List<CountryModel>>> getCountries(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.countries,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<CountryModel>.from(
        json.map(
              (e) => CountryModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<CountryModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<StateModel>>> getStatesByCountryId(int param)async {
    var headers = "?country_id=$param";
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.states + headers,
      requestMethod: RequestMethod.get,
      refresh: false,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<StateModel>.from(
        json.map((e) => StateModel.fromJson(e),),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<StateModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<CityModel>>> getCitiesByStateId(int param)async {
    var headers = "?state_id=$param";
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cities + headers,
      requestMethod: RequestMethod.get,
      refresh: false,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<CityModel>.from(
        json.map((e) => CityModel.fromJson(e),),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<CityModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> setDefaultAddress(int param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.setDefaultAddress(param),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data)=> data["key"] == "success",
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }
}