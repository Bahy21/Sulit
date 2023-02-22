part of 'seller_add_product_widgets_imports.dart';

class BuildProductForm extends StatelessWidget {
  final SellerAddProductController sellerAddProductController;

  const BuildProductForm({super.key, required this.sellerAddProductController});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimens.dp20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildProductInformationFields(
                sellerAddProductController: sellerAddProductController),
            BuildProductImagesFields(
                sellerAddProductController: sellerAddProductController),
            BuildProductVideoFields(
                sellerAddProductController: sellerAddProductController),
            BuildProductDescriptionFields(
                sellerAddProductController: sellerAddProductController),
          ],
        ),
      ),
    );
  }
}
