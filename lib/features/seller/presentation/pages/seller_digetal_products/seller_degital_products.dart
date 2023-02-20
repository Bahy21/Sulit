part of'seller_digetal_products_imports.dart';
class SellerDigitalProducts extends StatefulWidget {
  const SellerDigitalProducts({Key? key}) : super(key: key);

  @override
  State<SellerDigitalProducts> createState() => _SellerDigitalProductsState();
}

class _SellerDigitalProductsState extends State<SellerDigitalProducts> {
  SellerDigitalProductsController sellerDigitalProductsController=SellerDigitalProductsController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DefaultAppBar(title: "Digital Products", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            BuildAddDigitalProducts(),
            BuildDigitalProducts(sellerDigitalProductsController: sellerDigitalProductsController,)
          ],
        ));
  }
}
