part of 'shipping_imports.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: const BuildShippingButtons(),
      body: Column(
        children: [
          const BuildCartStepper(current: 2),
          const BuildNewShipping(),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 3,
              itemBuilder: (_, index) => const BuildShippingItem(),
            ),
          )
        ],
      ),
    );
  }
}
