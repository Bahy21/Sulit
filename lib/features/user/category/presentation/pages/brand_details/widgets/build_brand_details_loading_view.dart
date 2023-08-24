part of 'brand_details_w_imports.dart';

class BuildBrandDetailsLoadingView extends StatelessWidget {
  const BuildBrandDetailsLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      type: ListViewType.grid,
      runSpacing: 15.r,
      spacing: 15.r,
      gridCrossCount: 2,
      gridItemHeight: 200.spMin,
      padding: Dimens.standardPadding,
      children: List.generate(
        8,
        (index) => const BuildProductItemShimmer(),
      ),
    );
  }
}
