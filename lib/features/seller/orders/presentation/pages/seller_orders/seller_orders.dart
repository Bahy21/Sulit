part of 'seller_orders_imports.dart';

class SellerOrders extends StatefulWidget {
  const SellerOrders({Key? key}) : super(key: key);

  @override
  State<SellerOrders> createState() => _SellerOrdersState();
}

class _SellerOrdersState extends State<SellerOrders> {
  final SellerOrdersController sellerOrdersController =
      SellerOrdersController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Orders"),
      body: Column(
        children: [
          BuildOrderFilter(sellerOrdersController: sellerOrdersController),
          BuildOrderList(sellerOrdersController: sellerOrdersController),
        ],
      ),
    );
  }
}
