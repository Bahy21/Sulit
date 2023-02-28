part of 'seller_money_withdraw_widgets_imports.dart';

class BuildMoneyBalance extends StatelessWidget {
  final SellerMoneyWithdrawController sellerMoneyWithdrawController;

  const BuildMoneyBalance(
      {super.key, required this.sellerMoneyWithdrawController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
          margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
          height: 100.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius5PX,
            color: context.colors.darkPurple,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(CupertinoIcons.stopwatch, size: 30),
              Gaps.vGap15,
              Text(
                "100 د.إ",
                style: AppTextStyle.s20_w600(color: context.colors.white),
              ),
              Gaps.vGap5,
              Text(
                "Pending Balance",
                style: AppTextStyle.s11_w400(color: context.colors.white),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
          margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
          height: 100.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius5PX,
            gradient: LinearGradient(
              colors: [
                context.colors.secondary,
                context.colors.secondary.withOpacity(.5),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(CupertinoIcons.money_dollar_circle_fill, size: 30),
              Gaps.vGap15,
              Text(
                "100.000 د.إ",
                style: AppTextStyle.s20_w600(color: context.colors.white),
              ),
              Gaps.vGap5,
              Text(
                "Available Balance",
                style: AppTextStyle.s11_w400(color: context.colors.white),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => sellerMoneyWithdrawController.showSendRequestContent(
              context, sellerMoneyWithdrawController),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
            height: 100.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius5PX,
              color: context.colors.white,
              boxShadow: [
                BoxShadow(
                  color: context.colors.darkPurple,
                  spreadRadius: .5,
                  blurRadius: .5,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.add_circled_solid,
                  size: 50,
                  color: context.colors.darkPurple,
                ),
                Gaps.vGap15,
                Text(
                  "Send Withdraw Request",
                  style: AppTextStyle.s17_w400(color: context.colors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
