part of 'delivery_imports.dart';

class Delivery extends StatefulWidget {
  final List<CartItem> cartItems;

  const Delivery({Key? key, required this.cartItems}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  final DeliveryController controller = DeliveryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: const BuildDeliveryButtons(),
      body: Column(
        children: [
          const BuildCartStepper(current: 3),
          Flexible(
            child: ListView(
              children: [
                BuildDeliveryProducts(
                  cartItems: widget.cartItems,
                ),
                BuildDeliveryType(
                  deliveryController: controller,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
