part of 'seller_orders_imports.dart';

class SellerOrdersController {
  final TextEditingController orderCodeController = TextEditingController();
  final GenericBloc<bool> showFilterCubit = GenericBloc(false);
  final GenericBloc<bool> showInfoCubit = GenericBloc(false);
  DropDownModel? paymentFilterModel;
  DropDownModel? statusFilterModel;

  void onChangePayment(DropDownModel? model) {
    if (model != null) {
      paymentFilterModel = model;
    }
  }

  void onChangeStatus(DropDownModel? model) {
    if (model != null) {
      statusFilterModel = model;
    }
  }
}
