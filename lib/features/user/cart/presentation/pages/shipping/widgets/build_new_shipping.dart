part of 'shipping_widgets_imports.dart';

class BuildNewShipping extends StatelessWidget {
  const BuildNewShipping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> AutoRouter.of(context).push( AddNewAddressRoute(addAddressFor: AddAddressFor.cart)),
      child: Container(
        margin: const EdgeInsets.all(Dimens.dp10),
        padding: const EdgeInsets.all(Dimens.dp15),
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius10PX,
          color: context.colors.greyWhite,
          border: Border.all(color: context.colors.greyWhite),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Add New Address",
              style: AppTextStyle.s15_w700(color: context.colors.primary),
            ),
            Icon(Icons.add_circle, color: context.colors.primary),
          ],
        ),
      ),
    );
  }
}
