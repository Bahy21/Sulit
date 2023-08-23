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
    //   GridView.builder(
    //   padding: Dimens.standardPadding,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     crossAxisSpacing:15.r,
    //     mainAxisSpacing: 15.r,
    //   ),
    //   itemCount: 8,
    //   itemBuilder: (context, index) => const BuildProductItemShimmer(),
    // );
  }
}
