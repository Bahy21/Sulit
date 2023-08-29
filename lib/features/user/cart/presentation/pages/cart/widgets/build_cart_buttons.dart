part of 'cart_widgets_imports.dart';

class BuildCartButtons extends StatelessWidget {
  final String price ;
  final String currency ;
  final List<CartItem> cartItems ;
  final CartController controller ;
  const BuildCartButtons({Key? key, required this.price, required this.currency, required this.cartItems, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      padding: const EdgeInsets.all(Dimens.dp15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BuildTotalCost(price: price, currency: currency,),
          Row(
            children: [
              Expanded(
                child: DefaultButton(
                  title: "Return to shop",
                  borderColor: context.colors.primary,
                  textColor: context.colors.primary,
                  color: context.colors.white,
                  onTap: () =>AutoRouter.of(context).push(HomeRoute(index: 0)),
                ),
              ),
              Expanded(
                child: DefaultButton(
                  title: "Continue to shipping",
                  color: context.colors.primary,
                  onTap: () => controller.navigateToShipping(context)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
