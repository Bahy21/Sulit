part of 'category_details_widgets_imports.dart';

class BuildSubCategories extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;
  final int position;
  final SubCategory parentSubCategory;

  const BuildSubCategories(
      {super.key,
      required this.categoryDetailsController,
      required this.position,
      required this.parentSubCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: Dimens.paddingAll5PX,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: parentSubCategory.subCats.length,
        itemBuilder: (_, index) {
          return BuildSubCategoryItem(
            categoryDetailsController: categoryDetailsController,
            subCategoryModel: parentSubCategory.subCats[index],
            selected: parentSubCategory.selectedId!,
            index: position,
          );
        },
      ),
    );
  }
}
