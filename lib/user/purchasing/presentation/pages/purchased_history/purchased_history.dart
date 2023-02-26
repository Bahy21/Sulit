part of 'purchased_history_imports.dart';

class PurchasedHistory extends StatefulWidget {
  const PurchasedHistory({Key? key}) : super(key: key);

  @override
  State<PurchasedHistory> createState() => _PurchasedHistoryState();
}

class _PurchasedHistoryState extends State<PurchasedHistory> {
  PurchasedHistoryController purchasedHistoryController =
      PurchasedHistoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Purchased History", showBack: true),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        itemCount: 1,
        itemBuilder: (context, index) => BuildPurchasedHistoryItem(
          purchasedHistoryController: purchasedHistoryController,
        ),
      ),
    );
  }
}
