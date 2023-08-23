part of 'cart_imports.dart';

class CartController {
  final GenericBloc<CartDomainModel> cartItemsBloc = GenericBloc(CartDomainModel());
  CartController(){
    getCartItems();
  }
 
  Future<void> getCartItems({bool refresh = true}) async {
    String? token = await getIt<GetDeviceId>().deviceId;
    var params = _cartParams(refresh,token!);
    return await GetCart().call(params).then(
          (value) => cartItemsBloc.onUpdateData(
            value,
          ),
        );
  }

  GetCartItemsParams _cartParams(bool refresh, String token) {
    return GetCartItemsParams(
      macAddress: token ,
      refresh: refresh,
    );
  }
}
