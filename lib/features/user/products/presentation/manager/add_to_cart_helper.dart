// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/add_product_to_cart.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_variant_price.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_dialog.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToCartHelper {
  List<String> selectedVariants = [];
  final GenericBloc<int> qtyCubit = GenericBloc(1);
  final GenericBloc<Product?> productCubit = GenericBloc(null);


  void onSelectAttributes(BuildContext context, List<ProductOptions> model,
      int index, int position) {
    List<String> selected = [];
    var optionItem = model[index];
    var attributes = optionItem.selectedAttribute;
    if (optionItem.hasValue == true) {
      attributes.clear();
      attributes.add(optionItem.options[position]);
    } else {
      attributes.add(optionItem.options[position]);
    }
    optionItem.hasValue = true;
    model.where((element) => element.hasValue == true).map((e) {
      selected = [...selected, ...e.selectedAttribute];
      selectedVariants = selected;
      return e;
    }).toList();
    qtyCubit.onUpdateData(1);
    productCubit.onUpdateData(productCubit.state.data);
    getVariantPrice(context);
  }

  void getVariantPrice(BuildContext context) async {
    var params = _variantPriceParams();
    var result = await GetVariantPrice().call(params);
    if (result != null) {
      productCubit.onUpdateData(result);
    }
  }

  void addToCartDialog(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => BuildAddToCartDialog(
        product: product,
      ),
    );
  }

  Future<void> addProductToCart(
      int qty, int? variantId, BuildContext context) async {
    var params = await _addToCartParams(variantId, qty);
    if (params.variantId == null) {
      CustomToast.showSimpleToast(msg: 'Variant not found. !');
      return;
    }
    var data = await AddProductToCart().call(params);
    if (data != '') {
      CustomToast.showSimpleToast(
          msg: 'Product added to your cart.', type: ToastType.success);
    }
    AutoRouter.of(context).pop();
  }

  Future<AddProductToCartParams> _addToCartParams(
      int? variantId, int qty) async {
    return AddProductToCartParams(
      quantity: qty,
      variantId: variantId,
      macAddress: await getIt<GetDeviceId>().deviceId,
    );
  }

  VariantPriceParams _variantPriceParams() {
    return VariantPriceParams(
      id: productCubit.state.data!.id,
      variants: selectedVariants.join(','),
    );
  }
}
