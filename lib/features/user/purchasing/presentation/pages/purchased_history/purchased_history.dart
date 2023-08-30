part of 'purchased_history_imports.dart';

class PurchasedHistory extends StatefulWidget {
  const PurchasedHistory({Key? key}) : super(key: key);

  @override
  State<PurchasedHistory> createState() => _PurchasedHistoryState();
}

class _PurchasedHistoryState extends State<PurchasedHistory> {
  late PurchasedHistoryController controller;

  @override
  void initState() {
    controller = PurchasedHistoryController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Purchased History", showBack: true),
      body: GenericListView(
        type: ListViewType.api,
        cubit: controller.purchaseCubit,
        onRefresh: controller.getPurchasingHistory,
        padding: Dimens.paddingAll15PX,
        itemBuilder: (_, index, item) => BuildPurchasedHistoryItem(
          order: item,
          controller: controller,
        ),
        loadingWidget: const BuildHistoryLoading(),
        emptyStr: "No items in the history. !",
      )
    );
  }
}
