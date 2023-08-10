part of 'popular_products_widgets_imports.dart';

class BuildPopularProductsLoadingView extends StatelessWidget {
  const BuildPopularProductsLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GenericListView(
        runSpacing: 15.r,
        spacing: 15.r,
        gridCrossCount: 2,
        type: ListViewType.grid,
        gridItemHeight: 200.spMin,
        // padding: Dimens.paddingAll15PX,
        children: List.generate(
          5,
          (index) => const BuildProductItemShimmer(),
        ),
      ),
    );
  }
}
