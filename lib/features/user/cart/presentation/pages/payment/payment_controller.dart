part of 'payment_imports.dart';

class PaymentController {
  final TextEditingController coupon = TextEditingController();
  final TextEditingController additionalInfo = TextEditingController();
  final GenericBloc<Shipping?> shippingBloc = GenericBloc(null);
  final GlobalKey<FormState> couponFormKey = GlobalKey();
  final GlobalKey<FormState> additionalFormKey = GlobalKey();
  final GenericBloc<int> paymentCubit = GenericBloc(0);
  final GenericBloc<bool> conditionsCubit = GenericBloc(false);

  PaymentController(Shipping shipping) {
    shippingBloc.onUpdateData(shipping);
  }

  Future<void> applyCoupon() async {
    if (couponFormKey.currentState!.validate()) {
      var data = await ApplyCoupon().call(coupon.text);
      if (data != null) {
        CustomToast.showSimpleToast(msg: data.msg);
        shippingBloc.state.data!.summary = data.shipping.summary;
        shippingBloc.onUpdateData(shippingBloc.state.data);
      }
    }
  }

  Future<void> createOrder() async {
    if (!conditionsCubit.state.data) {
      CustomToast.showSimpleToast(
        msg: "You must accept terms and conditions",
        type: ToastType.error,
      );
      return;
    }
    var params = _orderParams();
    // print(params.toJson());
    // return ;
    var data = await CreateOrder().call(params);
    if (data) {
      CustomToast.showSimpleToast(
        msg: "Thank You for Your Order!",
        type: ToastType.success,
      );
    }
  }

  CreateOrderParams _orderParams() {
    return CreateOrderParams(
      paymentOption: shippingBloc.state.data!.paymentOption!
          .where((element) => element.selected)
          .first
          .paymentTypeKey,
      additionalInfo: additionalInfo.text,
    );
  }
}
