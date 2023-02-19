part of 'seller_money_withdraw_widgets_imports.dart';

class BuildPendingHeader extends StatelessWidget {
  const BuildPendingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pending Balance",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.line(context.colors.gray, 25),
        ListTile(
          visualDensity:const VisualDensity(vertical: -4),
          contentPadding: EdgeInsets.zero,
          leading: Text(
            "Order Code :",
            style: AppTextStyle.s14_w500(
              color: context.colors.black,
            ),
          ),
          title: Text(
            "Transfer Date :",
            style: AppTextStyle.s14_w500(
              color: context.colors.black,
            ),
          ),
          trailing: Text(
            "Amount :",
            style: AppTextStyle.s14_w500(
              color: context.colors.black,
            ),
          ),
        ),
        Gaps.line(context.colors.gray, 10),

      ],
    );
  }
}
