part of 'payment_imports.dart';

class PaymentController {
  final TextEditingController coupon = TextEditingController();
  final GenericBloc<Shipping?> shippingBloc = GenericBloc(null);
  final GlobalKey<FormState> formKey = GlobalKey ();
  final GenericBloc<int> paymentCubit = GenericBloc(0);
  final GenericBloc<bool> conditionsCubit = GenericBloc(false);

  PaymentController (Shipping shipping){
    shippingBloc.onUpdateData(shipping);
  }

  Future<void> applyCoupon()async {
    if(formKey.currentState!.validate()){
      var data = await ApplyCoupon().call(coupon.text);
      if(data != null){
        CustomToast.showSimpleToast(msg: data.msg);
        shippingBloc.state.data!.summary = data.shipping.summary ;
        shippingBloc.onUpdateData(shippingBloc.state.data);
      }
    }
  }

}
