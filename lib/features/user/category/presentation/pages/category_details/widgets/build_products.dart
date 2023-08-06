part of 'category_details_widgets_imports.dart';

class BuildProducts extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildProducts({super.key, required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RefreshIndicator(
        onRefresh: () => categoryDetailsController.getPopularProducts(1),
        child: PagedGridView<int, Product>(
          padding: Dimens.standardPadding,
          pagingController: categoryDetailsController.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .9,
          ),
          builderDelegate: PagedChildBuilderDelegate<Product>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingCatsProducts(),
            itemBuilder: (_, item, index) =>
                BuildProductItem(productModel: item),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
