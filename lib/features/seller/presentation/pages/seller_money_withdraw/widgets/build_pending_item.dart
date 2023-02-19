part of 'seller_money_withdraw_widgets_imports.dart';

class BuildPendingItem extends StatelessWidget {
  const BuildPendingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 70,
      visualDensity: const VisualDensity(vertical: -4),
      leading: Text(
        "# 2",
        style: AppTextStyle.s14_w400(
          color: context.colors.black,
        ),
      ),
      title: Text(
        "20/2/2022",
        style: AppTextStyle.s14_w400(
          color: context.colors.black,
        ),
      ),
      trailing: Text(
        "200 د.إ",
        style: AppTextStyle.s14_w400(
          color: context.colors.black,
        ),
      ),
    );
  }
}
