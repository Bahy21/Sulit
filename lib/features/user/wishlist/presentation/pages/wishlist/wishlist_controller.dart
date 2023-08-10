part of'wishlist_imports.dart';
class WishlistController {
  final GenericBloc<List<Product>> wishlistBloc = GenericBloc([]);

  WishlistController(){
    getWishlist(refresh: false);
    getWishlist();
  }
  Future<void> getWishlist ({bool refresh = true}) async {
    return await GetWishlist()(refresh).then((value) => wishlistBloc.onUpdateData(value));
  }
}