part of 'seller_order_details_imports.dart';

class SellerOrderDetails extends StatefulWidget {
  const SellerOrderDetails({Key? key}) : super(key: key);

  @override
  State<SellerOrderDetails> createState() => _SellerOrderDetailsState();
}

class _SellerOrderDetailsState extends State<SellerOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Order Details"),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
        children: const [
          BuildCustomerInfo(),
          BuildOrderDetails(),
          BuildOrderPrice(),
        ],
      ),
    );
  }
}
