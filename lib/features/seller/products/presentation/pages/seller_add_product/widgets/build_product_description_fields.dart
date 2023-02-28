part of 'seller_add_product_widgets_imports.dart';

class BuildProductDescriptionFields extends StatelessWidget {
  final SellerAddProductController sellerAddProductController;

  const BuildProductDescriptionFields(
      {super.key, required this.sellerAddProductController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: 'Product Description',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "Description",
            fieldTypes: FieldTypes.rich,
            type: TextInputType.text,
            action: TextInputAction.next,
            max: 5,
            controller: sellerAddProductController.descriptionController,
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
