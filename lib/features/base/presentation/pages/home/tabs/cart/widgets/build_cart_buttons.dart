part of 'cart_widgets_imports.dart';

class BuildCartButtons extends StatelessWidget {
  const BuildCartButtons({Key? key}) : super(key: key);

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
          const BuildTotalCost(),
          Row(
            children: [
              Expanded(
                child: DefaultButton(
                  title: "Return to shop",
                  borderColor: context.colors.primary,
                  textColor: context.colors.primary,
                  color: context.colors.white,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: DefaultButton(
                  title: "Continue to shipping",
                  color: context.colors.primary,
                  onTap: () =>
                      AutoRouter.of(context).push(const ShippingRoute()),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
