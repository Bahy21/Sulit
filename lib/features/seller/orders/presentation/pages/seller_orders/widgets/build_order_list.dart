part of 'seller_orders_widgets_imports.dart';

class BuildOrderList extends StatelessWidget {
  final SellerOrdersController sellerOrdersController;

  const BuildOrderList({super.key, required this.sellerOrdersController});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
        itemCount: 3,
        itemBuilder: (_, index) =>
            BuildOrderItem(sellerOrdersController: sellerOrdersController),
      ),
    );
  }
}
