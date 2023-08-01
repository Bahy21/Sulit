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
      body: PagedGridView<int, ProductDomainModel>(
        padding: Dimens.paddingAll15PX,
        pagingController: popularProductsController.pagingController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5.r,
          mainAxisSpacing: 15.r,
          crossAxisCount: 2,
          childAspectRatio: .9,
        ),

        builderDelegate: PagedChildBuilderDelegate<ProductDomainModel>(
          firstPageProgressIndicatorBuilder: (context) {
            return const BuildShimmerItem(height: 23);
          },
          itemBuilder: (context, item, index) {
            return BuildProductItem(productModel: item);
          },
          noItemsFoundIndicatorBuilder: (cxt) =>const BuildEmptyDataView(),
        ),
      ),
    );
  }
}
