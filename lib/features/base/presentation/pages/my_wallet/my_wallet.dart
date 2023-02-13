part of'my_wallet_imports.dart';
class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "My Wallet", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            BuildWalletDetails(),
            Gaps.vGap20,
            BuildChargeWallet(),
            Gaps.vGap32,

            BuildWalletHistory()
          ],
        )
    );
  }
}
