part of 'cart_imports.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final CartController controller = CartController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: const BuildCartButtons(),
      body: Column(
        children: [
          const BuildCartStepper(current: 1),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
              itemCount: 2,
              itemBuilder: (_, index) => BuildCartItem(
                cartController: controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
