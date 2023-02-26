part of 'seller_order_details_widgets_imports.dart';

class BuildOrderDetails extends StatelessWidget {
  const BuildOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp15),
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
        children: [
          const BuildDetailsItem(title: "Order", desc: "123456"),
          Padding(
            padding: const EdgeInsets.all(Dimens.dp7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Status : ",
                  style: AppTextStyle.s14_w600(color: context.colors.black),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.dp10, vertical: Dimens.dp5),
                  decoration: BoxDecoration(
                      color: context.colors.green,
                      borderRadius: Dimens.borderRadius5PX),
                  child: Text(
                    "Paid",
                    style: AppTextStyle.s12_w400(
                      color: context.colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const BuildDetailsItem(
              title: "Order Date", desc: "10/2/2022 02:20 AM"),
          const BuildDetailsItem(title: "Total Amount", desc: "155 د.إ"),
          const BuildDetailsItem(title: "Payment Method", desc: "Wallet"),
          const BuildAdditionalInfo(),
        ],
      ),
    );
  }
}
