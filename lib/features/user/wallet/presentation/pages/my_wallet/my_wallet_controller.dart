part of'my_wallet_imports.dart';
class MyWalletController {
  final GenericBloc<Wallet?> walletBloc = GenericBloc(null);

  MyWalletController(){
    getWallet(refresh: false);
    getWallet();
  }

  Future<void> getWallet({bool refresh = true}) async {
    return await GetMyWallet().call(refresh).then(
          (value) => walletBloc.onUpdateData(
            value,
          ),
        );
  }
}