part of'my_wallet_widgets_imports.dart';
class BuildWalletHistory extends StatelessWidget {
  final WalletRechargeHistory walletRechargeHistory;

  const BuildWalletHistory({Key? key, required this.walletRechargeHistory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Wallet Recharge History",
          style: AppTextStyle.s16_w500(color: context.colors.black),
        ),
        Gaps.vGap20,
        Visibility(
          visible: walletRechargeHistory.wallets.isNotEmpty,
          replacement: Container(
            margin : EdgeInsets.only(top: 150.h),
            child: Center(
              child: Text(
                'You had not recharge your wallet yet. !',
                style: AppTextStyle.s14_w400(
                  color: context.colors.grey,
                ),
              ),
            ),
          ),
          child: Column(
            children: List.generate(
              walletRechargeHistory.wallets.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ).r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).r,
                  color: context.colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.greyWhite,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: ListTile(
                  title: Text(
                    "${walletRechargeHistory.wallets[index].dmoun} AED",
                    style: AppTextStyle.s14_w500(
                      color: context.colors.black,
                    ),
                  ),
                  trailing: Text(
                    "Pending",
                    style: AppTextStyle.s12_w400(
                      color: context.colors.primary,
                    ),
                  ),
                  minLeadingWidth: 10.w,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
