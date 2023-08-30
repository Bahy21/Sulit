part of'order_summary_imports.dart';
class OrderSummaryController {
  final GenericBloc<OrderDomianModel?> orderBloc = GenericBloc(null);
  final GenericBloc<bool> orderSummaryVisible = GenericBloc(false);
  final TextEditingController orderCodeController = TextEditingController();

  Future<void> getTrackOrder() async {
    var param = orderCodeController.text;
    return GetTrackOrder().call(param).then(
          (value) => orderBloc.onUpdateData(value),
        );
  }

}