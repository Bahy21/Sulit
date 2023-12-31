// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/add_product_to_cart.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/set_toggle_favourite.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_dialog.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsHelper {

  Future<void> toggleFavourite({required BuildContext context ,required int id, required Function() onRefresh, }) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if(!auth){
      CustomToast.showAuthDialog(context);
      return  ;
    }
    var data = await SetToggleFavourite().call(id);
    if (data) {
      CustomToast.showSimpleToast(
        msg: "Item has been added to wishlist",

        type: ToastType.success,
      );
    } else {
      CustomToast.showSimpleToast(
        msg: "Item has been removed from wishlist",
        type: ToastType.success,
      );
    }
    onRefresh();
  }

  Future<int> addProductToCompare(Product product, BuildContext context) async {
    var isAdded = await isAddedToCompared(product);
    if (isAdded == true) {
      var data = getIt<ComparedProductsDb>().deleteItem(product.id);
      CustomToast.showSimpleToast(
        msg: "Item Deleted From Compare Successfully",
        type: ToastType.success,
      );
      product.isAddedTCompare = false;
      return data;
    } else {
      return _addItemToCompare(product, context);
    }
  }

  Future<int> _addItemToCompare(Product product, BuildContext context) async {
    var params = _comparedParams(product, context);
    var data = getIt<ComparedProductsDb>().insertItem(params);
    CustomToast.showSimpleToast(
      msg: "Item Added To Compare Successfully",
      type: ToastType.success,
    );
    product.isAddedTCompare = true;
    return data;
  }

  Future<bool> isAddedToCompared(Product product) async {
    var exitedItems = await getComparedProducts();
    if (exitedItems.isNotEmpty) {
      if (exitedItems
          .where((element) => element.productId == product.id)
          .toList()
          .isNotEmpty) {
        return true;
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

  ProductsTableData _comparedParams(Product product, BuildContext context) {
    var userId = context.read<UserCubit>().state.model?.id??0;
    return ProductsTableData(
      userId: userId,
      productId: product.id,
      name: product.name,
      image: product.thumbnailImage,
      brand: product.brandName,
      category: product.categoryName,
      price: product.priceHighLow,
    );
  }






}
