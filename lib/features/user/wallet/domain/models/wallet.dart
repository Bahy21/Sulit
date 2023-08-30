import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_history.dart';

class Wallet extends BaseDomainModel {
  String walletBalance;
  WalletRechargeHistory rechargeHistory;

  Wallet({
    required this.walletBalance,
    required this.rechargeHistory,
  });
}
