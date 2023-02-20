part of 'seller_money_withdraw_imports.dart';

class SellerMoneyWithDraw extends StatefulWidget {
  const SellerMoneyWithDraw({Key? key}) : super(key: key);

  @override
  _SellerMoneyWithDrawState createState() => _SellerMoneyWithDrawState();
}

class _SellerMoneyWithDrawState extends State<SellerMoneyWithDraw> {
  final SellerMoneyWithdrawController sellerMoneyWithdrawController =
      SellerMoneyWithdrawController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomSellerAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          BuildMoneyBalance(
            sellerMoneyWithdrawController: sellerMoneyWithdrawController,
          ),
          const BuildProductBalance(),
          const BuildPendingBalance(),
          BuildRequestHistory(
            sellerMoneyWithdrawController: sellerMoneyWithdrawController,
          ),
        ],
      ),
    );
  }
}
