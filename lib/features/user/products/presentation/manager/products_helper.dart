import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/set_toggle_favourite.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsHelper {
  Future<void> toggleFavourite (int id, void Function() onRefresh)async {
    var data = await SetToggleFavourite().call(id);
    if(data){
      CustomToast.showSimpleToast(msg: "Item has been added to wishlist");
      onRefresh();
    }
  }


}