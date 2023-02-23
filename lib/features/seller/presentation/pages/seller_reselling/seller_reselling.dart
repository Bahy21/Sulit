part of'seller_reselling_imports.dart';
class SellerReselling extends StatefulWidget {
  const SellerReselling({Key? key}) : super(key: key);

  @override
  State<SellerReselling> createState() => _SellerResellingState();
}

class _SellerResellingState extends State<SellerReselling> {
  SellerResellingController sellerResellingController = SellerResellingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Reselling", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            BuildResellingHeader(),
            BuildResellingProducts(sellerResellingController: sellerResellingController,)
          ],
        )
    );
  }
}
