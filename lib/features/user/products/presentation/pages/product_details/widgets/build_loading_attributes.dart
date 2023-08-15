part of 'product_details_widgets_imports.dart';

class BuildLoadingAttributes extends StatelessWidget {
  const BuildLoadingAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll8PX,
      margin: Dimens.paddingHorizontal15PX,
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius5PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          Wrap(
            children: List.generate(
              3,
              (index) => BuildShimmerItem(
                width: 50.w,
                height: 20.h,
                margin: const EdgeInsetsDirectional.only(end: 10),
              ),
            ),
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          Wrap(
            children: List.generate(
              5,
              (index) => BuildShimmerItem(
                width: 40.r,
                height: 40.r,
                margin: const EdgeInsetsDirectional.only(end: 10),
              ),
            ),
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          BuildShimmerItem(height: 10.h, width: 50.w),
          Gaps.vGap10,
          Row(
            children: [
              BuildShimmerItem(
                child: BuildCustomBounce(
                  onTap: () {},
                  iconData: CupertinoIcons.minus,
                ),
              ),
              Gaps.hGap5,
              BuildShimmerItem(height: 15.h, width: 10.w),
              Gaps.hGap5,
              BuildShimmerItem(
                child: BuildCustomBounce(
                  onTap: () {},
                  iconData: CupertinoIcons.add,
                ),
              ),
              Gaps.hGap10,
              BuildShimmerItem(height: 10.h, width: 50.w),
            ],
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
