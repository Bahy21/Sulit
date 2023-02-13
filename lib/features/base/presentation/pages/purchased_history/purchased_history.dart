part of'purchased_history_imports.dart';
class PurchasedHistory extends StatefulWidget {
  const PurchasedHistory({Key? key}) : super(key: key);

  @override
  State<PurchasedHistory> createState() => _PurchasedHistoryState();
}

class _PurchasedHistoryState extends State<PurchasedHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Purchased History", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [

          ],
        )
    );
  }
}
