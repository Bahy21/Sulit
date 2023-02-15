part of 'delivery_imports.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  final DeliveryController deliveryController = DeliveryController();

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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const BuildDeliveryProducts(),
                BuildDeliveryType(deliveryController: deliveryController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
