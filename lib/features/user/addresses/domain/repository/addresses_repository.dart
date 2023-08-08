import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/add_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';

abstract class AddressesRepository{
  Future<Either<Failure, List<Address>>> getAddress (bool param);
  Future<Either<Failure, bool>> addNewAddress (AddAddressParams params);
  Future<Either<Failure, List<Country>>> getCountries (bool param);
  Future<Either<Failure, List<StateDomainModel>>> getStatesByCountryId (int param);
  Future<Either<Failure, List<City>>> getCitiesByStateId (int param);
  Future<Either<Failure, bool>> setDefaultAddress(int param);
}