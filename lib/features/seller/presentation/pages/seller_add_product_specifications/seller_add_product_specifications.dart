part of 'seller_add_product_specifications_imports.dart';

class SellerAddProductSpecifications extends StatefulWidget {
  const SellerAddProductSpecifications({Key? key}) : super(key: key);

  @override
  _SellerAddProductSpecificationsState createState() =>
      _SellerAddProductSpecificationsState();
}

class _SellerAddProductSpecificationsState
    extends State<SellerAddProductSpecifications> {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController =
      SellerAddProductSpecificationsController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const BuildCustomSellerAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildSpecificationsForm(
              sellerAddProductSpecificationsController:
                  sellerAddProductSpecificationsController,
            ),
            DefaultButton(
              title: "Upload Product",
              onTap: () {},
              color: context.colors.darkPurple,
              margin: const EdgeInsets.all(Dimens.dp20),
            )
          ],
        ),
      ),
    );
  }
}
