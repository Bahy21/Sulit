part of'purchased_history_imports.dart';
class PurchasedHistoryController{
  GenericBloc<bool> isSelectedCubit = GenericBloc(false);
  final GenericBloc<List<OrderDomianModel>> purchaseCubit = GenericBloc([]);

  PurchasedHistoryController(){
    getPurchasingHistory(refresh: false);
    getPurchasingHistory();
  }

  Future<void> getPurchasingHistory({bool refresh = true}) async {
    return await GetPurchasingHistory().call(refresh).then(
          (value) => purchaseCubit.onUpdateData(value),
        );
  }
}