part of 'product_details_widgets_imports.dart';

class BuildProductReviews extends StatelessWidget {
  final List<Reviews> allReviews;

  const BuildProductReviews({super.key, required this.allReviews});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Visibility(
        visible: allReviews.isNotEmpty,
        replacement: Gaps.vGap10,
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
              Flexible(
                child: SingleChildScrollView(
                  padding: Dimens.paddingVertical10PX,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        allReviews.length,
                        (index) {
                          return  BuildReviewItem(reviewModel: allReviews[index]);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
