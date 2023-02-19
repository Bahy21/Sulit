part of 'seller_money_withdraw_widgets_imports.dart';

class BuildMoneyBalance extends StatelessWidget {
  const BuildMoneyBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      height: 100.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius5PX,
        gradient: LinearGradient(
          colors: [
            context.colors.darkGradiantColor,
            context.colors.gradiantColor
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.money_dollar_circle_fill, size: 30),
          Gaps.vGap10,
          Text(
            "100 د.إ",
            style: AppTextStyle.s20_w600(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
