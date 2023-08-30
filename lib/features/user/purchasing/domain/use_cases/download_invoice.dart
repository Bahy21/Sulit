import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class DownloadInvoice extends UseCase<bool, int> {
  @override
  Future<bool> call(int params) async {
    var result = await getIt<PurchasingRepository>().downloadInvoice(params);
    return result.fold((l) => false, (r) => r);
  }
}
