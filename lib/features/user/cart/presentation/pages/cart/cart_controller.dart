part of 'cart_imports.dart';

class CartController {
  final GenericBloc<CartDomainModel> cartItemsBloc = GenericBloc(CartDomainModel());

  CartController(){
    getCartItems();
  }

  Future<void> getCartItems({bool refresh = true}) async {
    var params = _cartParams(refresh);
    return await GetCart().call(params).then(
          (value) => cartItemsBloc.onUpdateData(
            value,
          ),
        );
  }

  GetCartItemsParams _cartParams(bool refresh) {
    return GetCartItemsParams(
      macAddress: "",
      refresh: refresh,
    );
  }
}
