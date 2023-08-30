part of 'purchased_history_imports.dart';

class PurchasedHistoryController {
  final GenericBloc<List<OrderDomianModel>> purchaseCubit = GenericBloc([]);

  Future<void> getPurchasingHistory({bool refresh = true}) async {
    return await GetPurchasingHistory().call(refresh).then(
          (value) => purchaseCubit.onUpdateData(value),
        );
  }

  void onOpenHistory(OrderDomianModel orderModel) {
    orderModel.selected = !orderModel.selected;
    purchaseCubit.onUpdateData(purchaseCubit.state.data);
  }
}
