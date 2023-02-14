part of 'delivery_widgets_imports.dart';

class BuildDeliveryButtons extends StatelessWidget {
  const BuildDeliveryButtons({Key? key}) : super(key: key);

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
              title: "Continue to Payment",
              color: context.colors.primary,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
