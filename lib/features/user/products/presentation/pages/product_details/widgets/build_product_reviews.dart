part of 'product_details_widgets_imports.dart';

class BuildProductReviews extends StatelessWidget {
  const BuildProductReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 150.spMin,
        padding: Dimens.paddingAll8PX,
        margin: Dimens.standardPadding,
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
            Text(
              "Reviews",
              style: AppTextStyle.s15_w700(
                color: context.colors.black,
              ),
            ),
            Gaps.vGap15,
            Flexible(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      4,
                          (index) {
                        return const BuildReviewItem();
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
