part of 'seller_money_withdraw_widgets_imports.dart';

class BuildRequestHeader extends StatelessWidget {
  const BuildRequestHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Withdraw request history",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.line(context.colors.gray, 25),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4),
          minLeadingWidth: 70,
          leading: Text(
            "Code : ",
            style: AppTextStyle.s14_w500(
              color: context.colors.black,
            ),
          ),
          title: Text(
            "Date : ",
            style: AppTextStyle.s14_w500(
              color: context.colors.black,
            ),
          ),
          trailing: Text(
            "Amount : ",
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
