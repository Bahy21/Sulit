part of'seller_commission_history_imports.dart';
class SellerCommissionHistory extends StatefulWidget {
  const SellerCommissionHistory({Key? key}) : super(key: key);

  @override
  State<SellerCommissionHistory> createState() => _SellerCommissionHistoryState();
}

class _SellerCommissionHistoryState extends State<SellerCommissionHistory> {
  SellerCommissionHistoryController sellerCommissionHistoryController = SellerCommissionHistoryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Commission History", showBack: true),
        body: Column(
          children: [
             BuildCommissionFilter(sellerCommissionHistoryController: sellerCommissionHistoryController,),
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16).r,
                  itemCount: 7,
                  itemBuilder: (context , index)=>const BuildCommissionHistoryItem()),
            ),
          ],
        ));
  }
}
