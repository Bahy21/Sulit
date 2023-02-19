part of 'seller_money_withdraw_widgets_imports.dart';

class BuildRequestHistory extends StatelessWidget {
  final SellerMoneyWithdrawController sellerMoneyWithdrawController;

  const BuildRequestHistory(
      {super.key, required this.sellerMoneyWithdrawController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Dimens.dp20),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildRequestHeader(),
          ...List.generate(
            6,
            (index) => BuildRequestItem(sellerMoneyWithdrawController: sellerMoneyWithdrawController),
          ),
        ],
      ),
    );
  }
}
