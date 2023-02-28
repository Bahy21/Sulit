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
          BuildRequestHeader(
            sellerMoneyWithdrawController: sellerMoneyWithdrawController,
          ),
          Table(
            children: [
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: context.colors.greyWhite,
                      width: 1,
                    ),
                  ),
                ),
                children: const [
                  BuildTableHeader(title: "Status"),
                  BuildTableHeader(title: "Date"),
                  BuildTableHeader(title: "Amount"),
                  BuildTableHeader(title: "Transfer to"),
                  BuildTableHeader(title: "Message"),
                ],
              ),
              ...List.generate(
                3,
                (index) => TableRow(
                  children: [
                    Container(
                      height: 20,
                      margin: const EdgeInsets.only(
                          top: Dimens.dp15, right: Dimens.dp20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: context.colors.green,
                        borderRadius: Dimens.borderRadius5PX,
                      ),
                    ),
                    const BuildTableItem(title: "20/2/2022 02:20 AM"),
                    const BuildTableItem(title: "444 د.إ"),
                    const BuildTableItem(title: "(xxxxQrs)"),
                    const BuildTableItem(title: "empty message "),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
