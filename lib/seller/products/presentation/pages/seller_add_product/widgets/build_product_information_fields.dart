part of 'seller_add_product_widgets_imports.dart';

class BuildProductInformationFields extends StatelessWidget {
  final SellerAddProductController sellerAddProductController;

  const BuildProductInformationFields(
      {super.key, required this.sellerAddProductController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: 'Product Information',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Product Name ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
              Text(
                "*",
                style: AppTextStyle.s14_w400(
                  color: context.colors.primary,
                ),
              ),
            ],
          ),
          GenericTextField(
            hint: "Product Name",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductController.productNameController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Row(
            children: [
              Text(
                "Category ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
              Text(
                "*",
                style: AppTextStyle.s14_w400(
                  color: context.colors.primary,
                ),
              ),
            ],
          ),
          DropdownTextField<DropDownModel>(
            title: "Category",
            hint: "Category",
            fillColor: context.colors.white,
            itemAsString: (u) => u.name,
            selectedItem: sellerAddProductController.categoryModel,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            validate: (value) => validateDropDown(context),
            data: const [
              DropDownModel(id: 1, name: "test"),
              DropDownModel(id: 2, name: "test2"),
              DropDownModel(id: 3, name: "test3")
            ],
            onChange: (model) =>
                sellerAddProductController.onChangeCategory(model),
          ),
          Text(
            "Brand ",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          DropdownTextField<DropDownModel>(
            title: "Brand",
            hint: "Brand",
            fillColor: context.colors.white,
            itemAsString: (u) => u.name,
            selectedItem: sellerAddProductController.brandModel,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            validate: (value) => validateDropDown(context),
            data: const [
              DropDownModel(id: 1, name: "test"),
              DropDownModel(id: 2, name: "test2"),
              DropDownModel(id: 3, name: "test3")
            ],
            onChange: (model) =>
                sellerAddProductController.onChangeBrand(model),
          ),
          Row(
            children: [
              Text(
                "Unit ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
              Text(
                "*",
                style: AppTextStyle.s14_w400(
                  color: context.colors.primary,
                ),
              ),
            ],
          ),
          GenericTextField(
            hint: "Unit (e.g. KG,Pc etc)",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductController.unitController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Row(
            children: [
              Text(
                "Weight ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
              Text(
                "(in Kg)",
                style: AppTextStyle.s12_w400(
                  color: context.colors.black,
                ),
              ),
            ],
          ),
          GenericTextField(
            hint: "0.00",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductController.weightController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Row(
            children: [
              Text(
                "Minimum Purchase Qty ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
              Text(
                "*",
                style: AppTextStyle.s14_w400(
                  color: context.colors.primary,
                ),
              ),
            ],
          ),
          GenericTextField(
            hint: "Qty",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductController.minQtyController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "Tags ",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "Add a tag",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductController.tagsController,
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
