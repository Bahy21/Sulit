part of 'seller_money_withdraw_widgets_imports.dart';

class BuildRequestDetails extends StatelessWidget {
  const BuildRequestDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Status :",
              style: AppTextStyle.s15_w700(
                color: context.colors.black,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp10, vertical: Dimens.dp5),
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
              decoration: BoxDecoration(
                borderRadius: Dimens.borderRadius5PX,
                color: context.colors.green,
              ),
              child: Text(
                "Paid ",
                style: AppTextStyle.s12_w500(
                  color: context.colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "Message :",
                style: AppTextStyle.s15_w700(
                  color: context.colors.black,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "Empty Text Text Empty Text  Empty Text  Empty Text  ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
