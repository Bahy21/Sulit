part of 'seller_add_product_widgets_imports.dart';

class BuildTaxFields extends StatelessWidget {
  final SellerAddProductController sellerAddProductController;

  const BuildTaxFields({super.key, required this.sellerAddProductController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: "Vat & TAX",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "VAT",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GenericTextField(
                  hint: "0",
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  controller: sellerAddProductController.taxController,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: Dimens.dp10, vertical: Dimens.dp15),
                  validate: (value) => value!.validateEmpty(),
                ),
              ),
              Gaps.hGap5,
              Expanded(
                child: DropdownTextField<DropDownModel>(
                  title: "Type",
                  hint: "Type",
                  itemAsString: (u) => u.name,
                  validate: (value) => validateDropDown(context),
                  selectedItem: sellerAddProductController.taxModel,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  data: const [
                    DropDownModel(id: 1, name: "Flat"),
                    DropDownModel(id: 2, name: "Percent"),
                  ],
                  onChange: (model) =>
                      sellerAddProductController.onChangeTax(model),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
