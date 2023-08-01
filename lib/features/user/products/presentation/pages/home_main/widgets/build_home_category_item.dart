part of 'home_main_widgets_imports.dart';

class BuildHomeCategoryItem extends StatelessWidget {
  final CategoryDomainModel categoryModel;

  const BuildHomeCategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.spMin,
      padding: Dimens.paddingAll8PX,
      margin: Dimens.paddingHorizontal5PX,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedImage(
            height: 60.r,
            width: 60.r,
            fit: BoxFit.cover,
            boxShape: BoxShape.circle,
            haveRadius: false,
            url: categoryModel.banner ?? "",
          ),
          Gaps.vGap10,
          Flexible(
            child: Text(
              categoryModel.name,
              textAlign: TextAlign.center,
              style: AppTextStyle.s13_w500(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
