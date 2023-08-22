part of'my_wallet_widgets_imports.dart';
class BuildWalletDetails extends StatelessWidget {
  final String walletBalance;
  const BuildWalletDetails({Key? key, required this.walletBalance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.all(16).r,
      margin: const EdgeInsets.symmetric(vertical: 4).r,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          context.colors.appBarColor,
          context.colors.blueAccent,

        ]),
        color: context.colors.appBarColor,
        borderRadius: BorderRadius.circular(10).r,
      ),
      child: Column(
        children: [
          Icon(Icons.monetization_on_outlined,color: context.colors.white,size: 30.sp,),
          Gaps.vGap20,

          Text(
            "$walletBalance AED",
            style: AppTextStyle.s20_w500(color: context.colors.white),
          ),
          Gaps.vGap10,
          Text(
            "Wallet Balance",
            style: AppTextStyle.s14_w500(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
