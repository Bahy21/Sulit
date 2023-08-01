part of 'categories_widgets_imports.dart';

class BuildLoadingCategoriesView extends StatelessWidget {
  const BuildLoadingCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      runSpacing: 15,
      spacing: 15,
      gridCrossCount: 2,
      type: ListViewType.grid,
      gridItemHeight: 150.spMin,
      padding: Dimens.paddingAll15PX,
      children: List.generate(
        8,
        (index) => const BuildLoadingCategoryItem(),
      ),
    );
  }
}
