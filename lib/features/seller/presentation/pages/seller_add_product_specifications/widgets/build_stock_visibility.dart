part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildStockVisibility extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildStockVisibility(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: "Stock Visibility State",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildStockVisibilityItem(
            title: "Show stock quantity",
            boolCubit:
                sellerAddProductSpecificationsController.showStockQtyCubit,
          ),
          BuildStockVisibilityItem(
            title: "Show stock with text only",
            boolCubit:
                sellerAddProductSpecificationsController.showStockTextCubit,
          ),
          BuildStockVisibilityItem(
            title: "Hide stock",
            boolCubit: sellerAddProductSpecificationsController.hideStockCubit,
          ),
        ],
      ),
    );
  }
}
