part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildSpecificationsForm extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildSpecificationsForm(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimens.dp20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildProductSpecificationFields(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController),
            BuildProductStockFields(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController),
            BuildStockQtyWarning(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController),
            BuildStockVisibility(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController),
            BuildProductPdfFields(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController),
            BuildProductMetaTagsFields(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController),
            BuildShippingDaysFields(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController),
            BuildTaxFields(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController)
          ],
        ),
      ),
    );
  }
}
