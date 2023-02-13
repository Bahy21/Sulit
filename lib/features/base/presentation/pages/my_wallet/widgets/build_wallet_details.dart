part of'my_wallet_widgets_imports.dart';
class BuildWalletDetails extends StatelessWidget {
  const BuildWalletDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.all(16).r,
      margin: const EdgeInsets.symmetric(vertical: 4).r,
      height: 115.h,
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
            "0.00 AED",
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
