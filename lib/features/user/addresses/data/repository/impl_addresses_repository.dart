import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/addresses/data/data_sources/addresses_data_sources.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/add_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/edit_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AddressesRepository)
class ImplAddressesRepository extends AddressesRepository with ModelToDomain{
  var dataSources = getIt<AddressesDataSources>();
  @override
  Future<Either<Failure, List<Address>>> getAddress(bool param)async {
    var result = await dataSources.getAddress(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, bool>> addNewAddress(AddAddressParams params)async {
    return await dataSources.addNewAddress(params);
  }

  @override
  Future<Either<Failure, List<Country>>> getCountries(bool param)async {
    var result = await dataSources.getCountries(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<StateDomainModel>>> getStatesByCountryId(int param)async {
    var result = await dataSources.getStatesByCountryId(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<City>>> getCitiesByStateId(int param)async {
    var result = await dataSources.getCitiesByStateId(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, bool>> setDefaultAddress(int param)async {
    return await dataSources.setDefaultAddress(param);
  }

  @override
  Future<Either<Failure, bool>> deleteAddress(int param)async {
    return await dataSources.deleteAddress(param);
  }

  @override
  Future<Either<Failure, bool>> editAddress(EditAddressParams params)async {
    return await dataSources.editAddress(params);
  }
}