part of 'category_details_widgets_imports.dart';

class BuildLoadingCatsProducts extends StatelessWidget {
  const BuildLoadingCatsProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GenericListView(
        type: ListViewType.grid,
        runSpacing: 15.r,
        spacing: 15.r,
        gridCrossCount: 2,
        gridItemHeight: 200.spMin,
        // padding: Dimens.paddingHorizontal15PX,
        children: List.generate(
          5,
          (index) => const BuildProductItemShimmer(),
        ),
      ),
    );
  }
}
