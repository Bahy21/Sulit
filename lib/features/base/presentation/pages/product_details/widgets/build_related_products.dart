part of'product_details_widgets_imports.dart';
class BuildRelatedProducts extends StatelessWidget {
  const BuildRelatedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Related Products",
                style: AppTextStyle.s16_w500(
                  color: context.colors.black,
                ),
              ),
            ],
          ),
          Gaps.vGap10,
          Flexible(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),

              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Gaps.hGap16,
                ...List.generate(
                  4,
                      (index) {
                    return const BuildTopSellingItem();
                  },
                )
              ]),
            ),
          ),
          Gaps.line(context.colors.greyWhite, 30.h),

        ],
      ),
    );
  }
}