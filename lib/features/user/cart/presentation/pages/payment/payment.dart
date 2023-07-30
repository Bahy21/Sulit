part of 'payment_imports.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final PaymentController paymentController = PaymentController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: const BuildPaymentButtons(),
      body: Column(
        children: [
          const BuildCartStepper(current: 4),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
              children: [
                BuildSummary(paymentController: paymentController),
                BuildPaymentOptions(paymentController: paymentController),
                BuildAdditionalInfo(paymentController: paymentController),
                BuildConditions(paymentController: paymentController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}