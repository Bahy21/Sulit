part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildShippingDaysFields extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildShippingDaysFields(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: "Estimate Shipping Time",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shipping Days",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "Shipping Days",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller:
                sellerAddProductSpecificationsController.shippingDaysController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
