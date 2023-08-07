import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/city_model/city_model.dart';
import 'package:flutter_tdd/core/models/api_models/country_model/country_model.dart';
import 'package:flutter_tdd/core/models/api_models/state_model/state_model.dart';
import 'package:flutter_tdd/features/user/addresses/data/models/address_model/address_model.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/add_address_params.dart';

abstract class AddressesDataSources {
  Future<Either<Failure, List<AddressModel>>> getAddress (bool param);
  Future<Either<Failure, bool>> addNewAddress (AddAddressParams params);
  Future<Either<Failure, List<CountryModel>>> getCountries (bool param);
  Future<Either<Failure, List<StateModel>>> getStatesByCountryId (int param);
  Future<Either<Failure, List<CityModel>>> getCitiesByStateId (int param);
  Future<Either<Failure, bool>> setDefaultAddress (int param);
}