import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/sale/data/models/flash_sale_model/flash_sale_model.dart';
import 'package:flutter_tdd/features/user/sale/data/models/sale_details_model/sale_details_model.dart';

abstract class SaleDataSources {
  Future<Either<Failure, List<FlashSaleModel>>> getAllFlashSales (bool param);
  Future<Either<Failure, SaleDetailsModel>> getAlFlashDealProducts (int param);
}