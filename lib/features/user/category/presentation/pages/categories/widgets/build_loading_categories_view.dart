part of 'categories_widgets_imports.dart';

class BuildLoadingCategoriesView extends StatelessWidget {
  const BuildLoadingCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      runSpacing: 15.r,
      spacing: 15.r,
      gridCrossCount: 2,
      type: ListViewType.grid,
      gridItemHeight: 150.spMin,
      padding: Dimens.standardPadding,
      children: List.generate(
        8,
        (index) => const BuildLoadingCategoryItem(),
      ),
    );
  }
}
