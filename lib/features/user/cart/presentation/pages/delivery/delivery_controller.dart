// ignore_for_file: use_build_context_synchronously

part of 'delivery_imports.dart';

class DeliveryController {
  final GenericBloc<int> deliveryTypeCubit = GenericBloc(0);
  DropDownModel? nearestPointModel;

  Future<void> setCartStoreShipping (List<CartItem> cartItems, BuildContext context) async {
    var params = _setCartStoreParams(cartItems);
    var data = await SetCartStoreShipping().call(params);
    if(data!= null){
      CustomToast.showSimpleToast(msg: "The Shipping info has been added successfully");
      AutoRouter.of(context).push( PaymentRoute(shipping: data));
    }
  }

  void onSelectPoint(DropDownModel? model) {
    if (model != null) {
      nearestPointModel = model;
    }
  }

  List<Map> _setCartStoreParams (List<CartItem> cartItems){
    String deliveryType = deliveryTypeCubit.state.data == 0 ? "DELIVERY" :"LOCAL_PICKUP" ;
    return cartItems.map((e) => { "owner_id":e.ownerId , "shipiing_type": deliveryType}).toList();
  }
  
  Future<void> applyCoupon (String param)async {
    var data = await ApplyCoupon().call(param);
    if(data != null){
      CustomToast.showSimpleToast(msg: "");
    }
  }
  
  
  
}
