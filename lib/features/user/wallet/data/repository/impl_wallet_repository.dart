import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WalletRepository)
class ImplWalletRepository extends WalletRepository {}