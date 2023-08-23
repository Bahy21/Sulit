import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet.dart';
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart';

class GetMyWallet implements UseCase<Wallet?, bool> {
  @override
  Future<Wallet?> call(bool param) async {
    var result = await getIt<WalletRepository>().getMyWallet(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
