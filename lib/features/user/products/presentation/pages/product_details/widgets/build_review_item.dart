part of 'product_details_widgets_imports.dart';

class BuildReviewItem extends StatelessWidget {
final Reviews reviewModel;

  const BuildReviewItem({super.key, required this.reviewModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: Dimens.dp10),
      padding: Dimens.paddingAll8PX,
      width: 230.w,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius5PX,
        border: Border.all(color: context.colors.greyWhite),
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          CachedImage(
            height: 50.r,
            width: 50.r,
            fit: BoxFit.fill,
            haveRadius: false,
            boxShape: BoxShape.circle,
            url: reviewModel.userReview.avatarOriginal,
          ),
          Gaps.hGap10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  reviewModel.userReview.name,
                  style: AppTextStyle.s13_w500(color: context.colors.black),
                ),
                Gaps.vGap5,
                Text(
                  reviewModel.comment,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppTextStyle.s11_bold(color: context.colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
