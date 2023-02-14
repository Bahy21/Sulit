part of 'shipping_widgets_imports.dart';

class BuildShippingButtons extends StatelessWidget {
  const BuildShippingButtons({Key? key}) : super(key: key);

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
      child: Row(
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
              title: "Continue to Delivery",
              color: context.colors.primary,
              onTap: () => AutoRouter.of(context).push(const DeliveryRoute()),
            ),
          ),
        ],
      ),
    );
  }
}
