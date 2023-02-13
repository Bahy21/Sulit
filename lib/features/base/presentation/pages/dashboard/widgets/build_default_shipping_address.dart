part of'dashboard_widgets_imports.dart';
class BuildDefaultShippingAddress extends StatelessWidget {
  const BuildDefaultShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Default Shipping Address",
          style: AppTextStyle.s16_w500(color: context.colors.black),
        ),
        Gaps.vGap5,

        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: context.colors.blackOpacity,
              size: 20.sp,
            ),
            Text(
              "saudi arabia , riyad , 5th street",
              style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
            ),
          ],
        )
      ],
    );
  }
}
