
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SaleDataSources)
class ImplSaleRepository extends SaleDataSources {}