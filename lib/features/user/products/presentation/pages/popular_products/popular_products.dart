part of 'popular_products_imports.dart';

class PopularProducts extends StatefulWidget {
  final PopularProductsDomainModel popularProductsModel;

  const PopularProducts({super.key, required this.popularProductsModel});

  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  final PopularProductsController popularProductsController =
      PopularProductsController();

  @override
  void initState() {
    popularProductsController.initPagination(widget.popularProductsModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          title: widget.popularProductsModel.name, showBack: true),
      body: RefreshIndicator(
        onRefresh: () => popularProductsController.getPopularProducts(
            widget.popularProductsModel.id, 1),
        child: PagedGridView<int, Product>(
          padding: Dimens.paddingAll15PX,
          shrinkWrap: true,
          pagingController: popularProductsController.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .9,
          ),
          builderDelegate: PagedChildBuilderDelegate<Product>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildPopularProductsLoadingView(),
            itemBuilder: (_, item, index) =>
                BuildProductItem(productModel: item),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
