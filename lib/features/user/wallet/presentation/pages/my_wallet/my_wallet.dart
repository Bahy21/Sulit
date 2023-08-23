part of 'my_wallet_imports.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  late MyWalletController controller;

  @override
  void initState() {
    controller = MyWalletController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "My Wallet", showBack: true),
      body: BlocBuilder<GenericBloc<Wallet?>, GenericState<Wallet?>>(
        bloc: controller.walletBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
              children: [
                BuildWalletDetails(
                  walletBalance: state.data!.walletBalance,
                ),
                Gaps.vGap20,
                const BuildChargeWallet(),
                Gaps.vGap32,
                BuildWalletHistory(
                  walletRechargeHistory: state.data!.rechargeHistory,
                )
              ],
            );
          } else {
            return const BuildWalletLoading();
          }
        },
      ),
    );
  }
}
