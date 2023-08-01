part of 'categories_widgets_imports.dart';

class BuildLoadingCategoryItem extends StatelessWidget {
  const BuildLoadingCategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          BuildShimmerItem(
            height: 60.r,
            width: 60.r,
            borderRadius: Dimens.borderRadius40PX,
          ),
          BuildShimmerItem(
            height: 20.r,
            margin: Dimens.paddingAll10PX,
          ),
        ],
      ),
    );
  }
}
