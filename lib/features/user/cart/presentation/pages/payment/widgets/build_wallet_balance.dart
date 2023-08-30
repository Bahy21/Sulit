part of 'payment_widgets_imports.dart';

class BuildWalletBalance extends StatelessWidget {
  final String walletBalance ;
  const BuildWalletBalance({Key? key, required this.walletBalance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your wallet balance : ",
            style: AppTextStyle.s16_w800(color: context.colors.black),
          ),
          Text(
            walletBalance,
            style: AppTextStyle.s16_w800(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
