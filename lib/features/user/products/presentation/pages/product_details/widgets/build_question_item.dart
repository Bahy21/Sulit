part of 'product_details_widgets_imports.dart';

class BuildQuestionItem extends StatelessWidget {
  final Queries queryModel;

  const BuildQuestionItem({super.key, required this.queryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: Dimens.dp10),
      padding: Dimens.paddingAll8PX,
      width: 200.w,
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
            url: queryModel.userDetails.avatarOriginal,
          ),
          Gaps.hGap10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  queryModel.userDetails.name,
                  style: AppTextStyle.s12_w500(color: context.colors.black),
                ),
                Gaps.vGap4,
                Text(
                  queryModel.question,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppTextStyle.s11_bold(color: context.colors.black),
                ),
                Gaps.vGap3,
                Text(
                  queryModel.reply,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
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
