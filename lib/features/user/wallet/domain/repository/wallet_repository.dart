import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet.dart';

abstract class WalletRepository {
  Future<Either<Failure, Wallet>> getMyWallet (bool param);
}