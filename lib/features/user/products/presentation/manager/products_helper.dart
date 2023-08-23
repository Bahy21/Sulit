import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/add_product_to_compare.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/set_toggle_favourite.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsHelper {
  Future<void> toggleFavourite(int id, void Function() onRefresh) async {
    var data = await SetToggleFavourite().call(id);
    if (data) {
      CustomToast.showSimpleToast(
        msg: "Item has been added to wishlist",
        type: ToastType.success,
      );
      onRefresh();
    }
  }

  Future<int> addProductToCompare(Product product) async {
    var isAdded = await _isAddedToCompared(product);
    if (isAdded == true) {
      var data = getIt<ComparedProductsDb>().deleteItem(product.id);
      CustomToast.showSimpleToast(
        msg: "Item Deleted From Compare Successfully",
        type: ToastType.success,
      );
      return data;
    } else {
      return _addItemToCompare(product);
    }
  }

  Future<int> _addItemToCompare(Product product) async {
    var params = _comparedParams(product);
    var data = getIt<ComparedProductsDb>().insertItem(params);
    CustomToast.showSimpleToast(
      msg: "Item Added To Compare Successfully",
      type: ToastType.success,
    );
    return data;
  }

  Future<bool> _isAddedToCompared(Product product) async {
    var exitedItems = await getComparedProducts();
    if (exitedItems.isNotEmpty) {
      if (exitedItems.where((element) => element.productId == product.id).toList().isNotEmpty) {
        return true ;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<List<ProductsTableData>> getComparedProducts() async {
    return await getIt<ComparedProductsDb>().getItems();
  }

  ProductsTableData _comparedParams(Product product) {
    return ProductsTableData(
      productId: product.id,
      name: product.name,
      image: product.thumbnailImage,
      brand: product.brandName,
      category: product.categoryName,
      price: product.priceHighLow,
    );
  }
}
