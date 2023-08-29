part of 'return_orders_imports.dart';

class ReturnOrders extends StatefulWidget {
  const ReturnOrders({Key? key}) : super(key: key);

  @override
  State<ReturnOrders> createState() => _ReturnOrdersState();
}

class _ReturnOrdersState extends State<ReturnOrders> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(title: "Return Orders", showBack: true),

    );
  }
}
