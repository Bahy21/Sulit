import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';


abstract class SaleRepository {
  Future<Either<Failure, List<FlashSale>>> getAllFlashSales (bool param);
  Future<Either<Failure, SaleDetailsDomainModel>> getAlFlashDealProducts (int param);
}