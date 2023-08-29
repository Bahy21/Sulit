part of 'cart_imports.dart';

class CartController {
  List stepIcons = [
    CupertinoIcons.cart,
    CupertinoIcons.map,
    CupertinoIcons.bus,
    CupertinoIcons.creditcard,
    CupertinoIcons.check_mark_circled,
  ];

  final GenericBloc<CartDomainModel> cartItemsBloc =
      GenericBloc(CartDomainModel());

  CartController() {
    getCartItems();
  }

  Future<void> getCartItems({bool refresh = true}) async {
    String? token = await getIt<GetDeviceId>().deviceId;
    var params = _cartParams(refresh, token!);
    return await GetCart().call(params).then(
          (value) => cartItemsBloc.onUpdateData(
            value,
          ),
        );
  }

  Future<void> updateCartItem(int qty, int id) async {
    // var params = await _updateCartItem(qty, id);
    // var data = UpdateCartItem().call(params);
  }

  Future<void> deleteItemFromCart(int id, int index) async {
    var params = _deleteItemFormCart(id);
    var data = await DeleteItemFormCart().call(params);
    if (data) {
      CustomToast.showSimpleToast(msg: 'Success delete item');
      cartItemsBloc.state.data.items!.removeAt(index);
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
    }
  }

  void navigateToShipping(BuildContext context) {
    if (cartItemsBloc.state.data.items!.isNotEmpty) {
      AutoRouter.of(context).push(
        ShippingRoute(
          cartItems: cartItemsBloc.state.data.items!,
        ),
      );
    } else {
      CustomToast.showSimpleToast(msg: "Your cart is empty");
      return;
    }
  }

  GetCartItemsParams _cartParams(bool refresh, String token) {
    return GetCartItemsParams(
      macAddress: token,
      refresh: refresh,
    );
  }

  DeleteCartItemParams _deleteItemFormCart(
    int id,
  ) {
    return DeleteCartItemParams(id: id, deviceId: '');
  }

  Future<UpdateCartItemParams> _updateCartItemParams(int qty, int id) async {
    return UpdateCartItemParams(
      macAddress: await getIt<GetDeviceId>().deviceId,
      qty: qty,
      id: id,
    );
  }
}
