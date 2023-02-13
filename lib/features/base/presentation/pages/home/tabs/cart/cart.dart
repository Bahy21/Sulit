part of 'cart_imports.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BuildCustomAppBar(),
      body: GenericListView(
        type: ListViewType.normal,
        padding: EdgeInsets.all(Dimens.dp20),
        children: [
          BuildCartItem(),
          BuildCartItem(),
          BuildCartItem(),
        ],
      ),
    );
  }
}
