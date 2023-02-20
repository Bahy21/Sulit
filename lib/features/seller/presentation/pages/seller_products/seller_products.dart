part of'seller_products_imports.dart';
class SellerProducts extends StatefulWidget {
  const SellerProducts({Key? key}) : super(key: key);

  @override
  State<SellerProducts> createState() => _SellerProductsState();
}

class _SellerProductsState extends State<SellerProducts> {
  SellerProductsController sellerProductsController = SellerProductsController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DefaultAppBar(title: "Products", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            BuildSellerAddNewProduct(),
            BuildSellerProducts(sellerProductsController: sellerProductsController,)
          ],
        ));
  }
}
