part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildProductStockFields extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildProductStockFields(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: "Product Price + Stock",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Unit price (AED) ",
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
            hint: "0",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller:
                sellerAddProductSpecificationsController.unitPriceController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "Discount Date Range ",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: BlocConsumer<GenericBloc<String>, GenericState<String>>(
                  bloc: sellerAddProductSpecificationsController
                      .startDiscountDateCubit,
                  listener: (_, state) {
                    sellerAddProductSpecificationsController
                        .startDiscountDate.text = state.data;
                  },
                  builder: (_, state) {
                    return GenericTextField(
                      hint: "Start date",
                      fieldTypes: FieldTypes.clickable,
                      type: TextInputType.text,
                      controller: sellerAddProductSpecificationsController
                          .startDiscountDate,
                      action: TextInputAction.done,
                      validate: (value) => value!.noValidate(),
                      margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: Dimens.dp10, vertical: Dimens.dp15),
                      onTab: () => sellerAddProductSpecificationsController
                          .setStartDate(context),
                    );
                  },
                ),
              ),
              Gaps.hGap10,
              Expanded(
                child: BlocConsumer<GenericBloc<String>, GenericState<String>>(
                  bloc: sellerAddProductSpecificationsController
                      .endDiscountDateCubit,
                  listener: (_, state) {
                    sellerAddProductSpecificationsController
                        .endDiscountDate.text = state.data;
                  },
                  builder: (_, state) {
                    return GenericTextField(
                      hint: "End date",
                      controller: sellerAddProductSpecificationsController
                          .endDiscountDate,
                      fieldTypes: FieldTypes.clickable,
                      type: TextInputType.text,
                      action: TextInputAction.done,
                      validate: (value) => value!.noValidate(),
                      onTab: () => sellerAddProductSpecificationsController
                          .setEndDate(context),
                    );
                  },
                ),
              ),
            ],
          ),
          Text(
            "Discount",
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
                  controller: sellerAddProductSpecificationsController
                      .discountController,
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
                  selectedItem:
                      sellerAddProductSpecificationsController.discountModel,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  data: const [
                    DropDownModel(id: 1, name: "Flat"),
                    DropDownModel(id: 2, name: "Percent"),
                  ],
                  onChange: (model) => sellerAddProductSpecificationsController
                      .onChangeDiscount(model),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Quantity ",
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
            hint: "0",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductSpecificationsController.qtyController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "SKU ",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "SKU",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductSpecificationsController.skuController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "External link ",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "External link",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller:
                sellerAddProductSpecificationsController.externalLinkController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "Leave it blank if you don't use external site link",
            style: AppTextStyle.s12_w400(
              color: context.colors.gray,
            ),
          ),
          Gaps.vGap15,
          Text(
            "External link button text",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "External link button text",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller:
                sellerAddProductSpecificationsController.linkBtnController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "Leave it blank if you don't use external site link",
            style: AppTextStyle.s12_w400(
              color: context.colors.gray,
            ),
          ),
        ],
      ),
    );
  }
}
