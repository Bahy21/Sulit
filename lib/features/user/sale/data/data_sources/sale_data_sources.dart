import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/sale/data/models/flash_sale_model/flash_sale_model.dart';

abstract class SaleDataSources {
  Future<Either<Failure, List<FlashSaleModel>>> getAllFlashSales (bool param);

}