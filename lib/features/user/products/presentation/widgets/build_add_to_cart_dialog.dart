import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/add_to_cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_attributes.dart';

class BuildAddToCartDialog extends StatelessWidget {
  final Product product;

  const BuildAddToCartDialog({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GenericBloc<int> qtyBloc = GenericBloc(1);
    return AlertDialog(
      backgroundColor: Colors.white,
      content: BlocBuilder<GenericBloc<Product?>, GenericState<Product?>>(
        bloc: getIt<AddToCartHelper>().productCubit,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CachedImage(
                url: product.images.first,
                height: 100,
                width: MediaQuery.of(context).size.width,
                borderRadius: BorderRadius.circular(10),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  product.name,
                  style: AppTextStyle.s16_w500(color: context.colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'price',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  Text(
                    state.data!.priceHighLow,
                    style: const AppTextStyle.s16_w400(color: Colors.red),
                  ),
                ],
              ),
              Divider(thickness: 1, color: context.colors.greyWhite),
              BuildProductAttributes(
                productOptions: product.choiceOptions ?? [],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'quantity: ',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  BuildCustomBounce(
                    onTap: () {
                      state.data!.minQty +1 ;
                      getIt<AddToCartHelper>().productCubit.onUpdateData(state.data);
                    },
                    iconData: Icons.remove,
                  ),
                  Text(
                    '  ${state.data!.minQty} ',
                    style: AppTextStyle.s16_w400(
                      color: context.colors.black,
                    ),
                  ),
                  BuildCustomBounce(
                    onTap: () {
                      qtyBloc.onUpdateData(qtyBloc.state.data + 1);
                    },
                    iconData: Icons.add,
                  )
                ],
              ),
              Divider(thickness: 1, color: context.colors.greyWhite),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Price:',
                    style: AppTextStyle.s16_w400(
                      color: context.colors.black,
                    ),
                  ),
              Text(
                state.data!.priceHighLowDiscount,
                style: const AppTextStyle.s16_w400(color: Colors.red),
              ),
            ],
          ),
          GestureDetector(
                onTap: () => getIt<AddToCartHelper>().addProductToCart(
                  qtyBloc.state.data,
                  product.variant?.id,
                  context,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 50.w,
                    vertical: 20.h,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: context.colors.white,
                        size: 15,
                      ),
                      Gaps.hGap10,
                      const Text('Add to cart'),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
