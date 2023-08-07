// ignore_for_file: library_private_types_in_public_api

part of 'popular_products_imports.dart';
class PopularProducts extends StatefulWidget {
  final PopularProductsDomainModel model;

  const PopularProducts({super.key, required this.model});

  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  late PopularProductsController controller ;


  @override
  void initState() {
    controller = PopularProductsController(widget.model.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          title: widget.model.name, showBack: true),
      body: RefreshIndicator(
        onRefresh: () => controller.getPopularProducts(
            widget.model.id, 1),
        child: PagedGridView<int, Product>(
          padding: Dimens.paddingAll15PX,
          shrinkWrap: true,
          pagingController: controller.pagingController,
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

