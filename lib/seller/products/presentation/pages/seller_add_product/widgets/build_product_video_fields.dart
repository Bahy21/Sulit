part of 'seller_add_product_widgets_imports.dart';

class BuildProductVideoFields extends StatelessWidget {
  final SellerAddProductController sellerAddProductController;

  const BuildProductVideoFields(
      {super.key, required this.sellerAddProductController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: 'Product Videos',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Video Provider",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          DropdownTextField<DropDownModel>(
            title: "Video",
            hint: "Video",
            fillColor: context.colors.white,
            itemAsString: (u) => u.name,
            selectedItem: sellerAddProductController.videoModel,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            validate: (value) => validateDropDown(context),
            data: const [
              DropDownModel(id: 1, name: "YouTube"),
              DropDownModel(id: 2, name: "DailyMotion"),
              DropDownModel(id: 3, name: "Vimeo")
            ],
            onChange: (model) =>
                sellerAddProductController.onChangeVideo(model),
          ),
          Text(
            "Video Link",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "URL",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: sellerAddProductController.videoLinkController,
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
