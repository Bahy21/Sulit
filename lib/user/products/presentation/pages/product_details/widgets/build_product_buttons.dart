part of 'product_details_widgets_imports.dart';

class BuildProductButtons extends StatelessWidget {
  const BuildProductButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15).r,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5).r,
              decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(5).r),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: context.colors.white,
                size: 14.sp,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ).r,
                margin:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 5).r,
                decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: BorderRadius.circular(5).r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: context.colors.white,
                      size: 14.sp,
                    ),
                    Gaps.hGap10,
                    Text(
                      "Buy Now",
                      style: AppTextStyle.s12_w400(
                        color: context.colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Gaps.vGap20,
        Row(
          children: [
            Expanded(
              child: Text(
                "Add To WishList",
                style: AppTextStyle.s16_w700(
                  color: context.colors.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                "Add To Compare",
                style: AppTextStyle.s16_w700(
                  color: context.colors.primary,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        Gaps.line(context.colors.greyWhite, 30.h),
        Text(
          "Share : ",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap15,
        Wrap(
          children: const [
            BuildShareItem(image: Res.facebook,),
            BuildShareItem(image: Res.apple,),
            BuildShareItem(image: Res.facebook,),
          ],
        ),
        Gaps.line(context.colors.greyWhite, 30.h),

      ],
    );
  }
}
