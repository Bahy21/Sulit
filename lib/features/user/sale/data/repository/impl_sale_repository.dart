
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SaleRepository)
class ImplSaleRepository extends SaleRepository with ModelToDomain {
  var dataSources = getIt<SaleDataSources>();
  @override
  Future<Either<Failure, List<FlashSale>>> getAllFlashSales(bool param)async {
    var result = await dataSources.getAllFlashSales(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, SaleDetailsDomainModel>> getAlFlashDealProducts(int param)async{
    var result = await dataSources.getAlFlashDealProducts(param);
    return toDomainResult(result);
  }
}