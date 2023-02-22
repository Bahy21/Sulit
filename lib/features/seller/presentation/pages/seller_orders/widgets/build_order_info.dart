part of 'seller_orders_widgets_imports.dart';

class BuildOrderInfo extends StatelessWidget {
  const BuildOrderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BuildInfoItem(title: "Num. of products", desc: "3"),
        BuildInfoItem(title: "Customer", desc: "Name"),
        BuildInfoItem(title: "Amount", desc: "100 د.إ"),
        BuildInfoItem(title: "Reseller amount", desc: "100 د.إ"),
        BuildInfoItem(title: "Delivery Status", desc: "delivered"),
      ],
    );
  }
}
