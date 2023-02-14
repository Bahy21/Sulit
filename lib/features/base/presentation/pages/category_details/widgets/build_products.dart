part of 'category_details_widgets_imports.dart';

class BuildProducts extends StatelessWidget {
  const BuildProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GenericListView(
        type: ListViewType.grid,
        runSpacing: 10,
        spacing: 10,
        gridCrossCount: 2,
        gridItemHeight: 200.spMin,
        padding: const EdgeInsets.all(15),
        children: const [
          BuildCategoryDetailsItem(),
          BuildCategoryDetailsItem(),
          BuildCategoryDetailsItem(),
          BuildCategoryDetailsItem(),
          BuildCategoryDetailsItem(),
        ],
      ),
    );
  }
}
