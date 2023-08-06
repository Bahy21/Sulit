part of 'categories_widgets_imports.dart';

class BuildCategoryItem extends StatelessWidget {
  final Category categoryModel;

  const BuildCategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context)
          .push(CategoryDetailsRoute(categoryModel: categoryModel)),
      child: Container(
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
      ),
    );
  }
}
