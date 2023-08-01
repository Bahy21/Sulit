import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';

class GetAllFlashSales implements UseCase<List<FlashSale>, bool> {
  @override
  Future<List<FlashSale>> call(bool param) async {
    var result = await getIt.get<SaleRepository>().getAllFlashSales(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
