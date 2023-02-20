part of'payment_history_imports.dart';
class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  PaymentHistoryController paymentHistoryController = PaymentHistoryController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DefaultAppBar(title: "Payment History", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            BuildPaymentList(paymentHistoryController: paymentHistoryController,)
          ],
        ));
  }
}
