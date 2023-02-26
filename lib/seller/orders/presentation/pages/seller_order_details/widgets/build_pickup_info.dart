part of 'seller_order_details_widgets_imports.dart';

class BuildPickupInfo extends StatelessWidget {
  const BuildPickupInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap5,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pickup Point : ",
              style: AppTextStyle.s14_w600(
                color: context.colors.primary,
              ),
            ),
            Flexible(
              child: Text(
                "Dubai mall , Egypt , Cairo , Saudi  Egypt , Cairo , Saudi  ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
            ),
          ],
        ),
        Gaps.vGap10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone,
              color: context.colors.primary,
              size: 15,
            ),
            Text(
              "+98765432333",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
