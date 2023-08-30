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
      body: BlocBuilder<GenericBloc<List<OrderDomianModel>>,
          GenericState<List<OrderDomianModel>>>(
        bloc: controller.purchaseCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Center(
                  child: Text(
                'No items in the history. ! ',
                style: AppTextStyle.s14_w400(color: context.colors.grey),
              )),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
                itemCount: state.data.length,
                itemBuilder: (context, index) => BuildPurchasedHistoryItem(
                  order: state.data[index],
                  controller: controller,
                ),
              ),
            );
          } else {
            return const BuildHistoryLoading();
          }
        },
      ),
    );
  }
}
