part of'my_wallet_widgets_imports.dart';
class BuildWalletHistory extends StatelessWidget {
  const BuildWalletHistory({Key? key}) : super(key: key);

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

        ...List.generate(4, (index) =>Container(
            margin: const EdgeInsets.symmetric(vertical: 5,).r,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5).r,
                color: context.colors.white,
                boxShadow: [
                  BoxShadow(
                      color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
                ]),
            child: ListTile(
              title: Text(
                "800 AED",
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),

              trailing: Text(
                "Pending",
                style: AppTextStyle.s12_w400(color: context.colors.primary),
              ),
              minLeadingWidth: 10.w,
            )
        ))
      ],
    );
  }
}
