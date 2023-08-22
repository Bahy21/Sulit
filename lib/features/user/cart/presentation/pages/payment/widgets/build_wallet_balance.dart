part of 'payment_widgets_imports.dart';

class BuildWalletBalance extends StatelessWidget {
  final String walletBalance ;
  const BuildWalletBalance({Key? key, required this.walletBalance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Gaps.line(context.colors.gray, 10)),
            Padding(
              padding: const EdgeInsets.all(Dimens.dp15),
              child: Text(
                "OR",
                style: AppTextStyle.s17_w800(color: context.colors.primary),
              ),
            ),
            Expanded(child: Gaps.line(context.colors.gray, 10))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your wallet balance : ",
              style: AppTextStyle.s16_w800(color: context.colors.black),
            ),
            Text(
              "$walletBalance د.إ ",
              style: AppTextStyle.s16_w800(color: context.colors.primary),
            ),
          ],
        ),
      ],
    );
  }
}
