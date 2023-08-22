import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_model/wallet_model.dart';

abstract class WalletDataSources {
  Future<Either<Failure, WalletModel>> getMyWallet(bool param);
}