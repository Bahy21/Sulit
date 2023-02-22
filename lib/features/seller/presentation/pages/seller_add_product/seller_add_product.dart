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
        body: Column(
          children: [
            BuildProductForm(
                sellerAddProductController: sellerAddProductController),
            DefaultButton(
              title: "Continue",
              onTap: () => AutoRouter.of(context)
                  .push(const SellerAddProductSpecificationsRoute()),
              color: context.colors.darkPurple,
              margin: const EdgeInsets.all(Dimens.dp20),
            ),
          ],
        ),
      ),
    );
  }
}
