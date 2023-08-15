part of 'product_details_widgets_imports.dart';

class BuildProductQty extends StatelessWidget {
  final ProductDetailsController productDetailsController;

  const BuildProductQty({super.key, required this.productDetailsController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quantity : ",
          style: AppTextStyle.s15_w700(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,
        Row(
          children: [
            BuildCustomBounce(onTap: () {}, iconData: CupertinoIcons.minus),
            Gaps.hGap10,

            Text(
              "1",
              style: AppTextStyle.s16_w400(color: context.colors.black),
            ),
            Gaps.hGap10,

            BuildCustomBounce(onTap: () {}, iconData: CupertinoIcons.add),
            Gaps.hGap10,
            Text(
              "(10 Available)",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
          ],
        ),
        Gaps.line(context.colors.greyWhite, 20.h),
        Text(
          "Total Price : ",
          style: AppTextStyle.s15_w700(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,
        Text(
          "13.00 AED",
          style: AppTextStyle.s18_w500(
            color: context.colors.primary,
          ),
        ),
        Gaps.vGap10,

      ],
    );
  }
}
