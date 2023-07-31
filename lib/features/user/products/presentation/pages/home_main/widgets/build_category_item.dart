part of 'home_main_widgets_imports.dart';

class BuildCategoriesItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const BuildCategoriesItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context)
          .push(CategoryDetailsRoute(title: categoryModel.name)),
      child: Container(
        height: 60.h,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16).r,
        padding: const EdgeInsetsDirectional.only(
          start: 5,
          end: 15,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                  color: context.colors.greyWhite,
                  blurRadius: 1,
                  spreadRadius: 1)
            ]),
        child: Row(
          children: [
            CachedImage(
              height: 50.r,
              width: 50.r,
              fit: BoxFit.cover,
              haveRadius: false,
              url: categoryModel.banner ?? "",
            ),
            Gaps.hGap10,
            Expanded(
              child: Text(
                categoryModel.name,
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: context.colors.blackOpacity,
              size: 10.sp,
            )
          ],
        ),
      ),
    );
  }
}
