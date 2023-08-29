part of 'cart_widgets_imports.dart';

class BuildCartItem extends StatelessWidget {
  final CartItem cartItem;

  final CartController controller;

  final int index;

  const BuildCartItem({
    super.key,
    required this.cartItem,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5).r,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              CachedImage(
                url: cartItem.thumbnailImage,
                height: 70.h,
                width: 80.w,
                fit: BoxFit.fill,
              ),
              Gaps.hGap12,
              Expanded(
                child: Text(
                  cartItem.name,
                  style: AppTextStyle.s14_w400(color: context.colors.black).copyWith(
                    height: 1.5
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                BuildPriceItem(title: "Price", price: cartItem.price, currency: cartItem.currencySymbol,),
                BuildPriceItem(title: "Tax", price: cartItem.tax, currency: cartItem.currencySymbol,),
                BuildPriceItem(title: "Total", price: cartItem.total, currency: cartItem.currencySymbol,),
              ],
            ),
          ),
          Row(
            children: [
              BuildCustomBounce(
                onTap: () {
                  cartItem.quantity ++;
                  controller.cartItemsBloc.onUpdateData(controller.cartItemsBloc.state.data);
                },
                iconData: CupertinoIcons.add,
              ),
              Text(
                cartItem.quantity.toString(),
                style: AppTextStyle.s16_w400(
                  color: context.colors.black,
                ),
              ),
              BuildCustomBounce(
                onTap: () {
                  cartItem.quantity --;
                  controller.cartItemsBloc.onUpdateData(controller.cartItemsBloc.state.data);
                },
                iconData: CupertinoIcons.minus,
              ),
              const Spacer(),
              BuildCustomBounce(
                onTap: () => controller.deleteItemFromCart(
                  cartItem.id,
                  index,
                ),
                iconData: CupertinoIcons.delete,
                deleteIcon: true,
              ),
            ],
          ),
          Gaps.vGap10
        ],
      ),
    );
  }
}
