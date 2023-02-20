part of 'seller_add_product_imports.dart';

class SellerAddProduct extends StatefulWidget {
  const SellerAddProduct({Key? key}) : super(key: key);

  @override
  _SellerAddProductState createState() => _SellerAddProductState();
}

class _SellerAddProductState extends State<SellerAddProduct> {
  final SellerAddProductController sellerAddProductController =
      SellerAddProductController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const BuildCustomSellerAppBar(),
        body: ListView(
          padding: const EdgeInsets.all(Dimens.dp20),
          children: [
            BuildProductInformationFields(
                sellerAddProductController: sellerAddProductController),
            BuildProductImagesFields(
                sellerAddProductController: sellerAddProductController),
            BuildProductVideoFields(
                sellerAddProductController: sellerAddProductController),
            // BuildProductSpecificationFields(
            //     sellerAddProductController: sellerAddProductController),
            // BuildProductStockFields(
            //     sellerAddProductController: sellerAddProductController),
            BuildProductDescriptionFields(
                sellerAddProductController: sellerAddProductController),
            BuildProductPdfFields(
                sellerAddProductController: sellerAddProductController),
            BuildProductMetaTagsFields(
                sellerAddProductController: sellerAddProductController),
            BuildShippingDaysFields(
                sellerAddProductController: sellerAddProductController),
            BuildTaxFields(
                sellerAddProductController: sellerAddProductController)
          ],
        ),
      ),
    );
  }
}
