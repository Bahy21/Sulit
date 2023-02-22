part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildProductMetaTagsFields extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildProductMetaTagsFields(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: "SEO Meta Tags",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Meta Title",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "Meta Title",
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller:
                sellerAddProductSpecificationsController.metaTitleController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "Meta Description",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            hint: "Meta Description",
            fieldTypes: FieldTypes.rich,
            type: TextInputType.multiline,
            max: 6,
            action: TextInputAction.newline,
            controller:
                sellerAddProductSpecificationsController.metaDescController,
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
            validate: (value) => value!.validateEmpty(),
          ),
          Text(
            "Meta Image",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          GenericTextField(
            fieldTypes: FieldTypes.clickable,
            type: TextInputType.text,
            hint: "Meta Image",
            action: TextInputAction.done,
            suffixIcon: Container(
              width: 70.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.darkPurple.withOpacity(.3),
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(5),
                ),
              ),
              child: Text(
                "Browse",
                style: AppTextStyle.s14_w600(color: context.colors.white),
              ),
            ),
            onTab: () => sellerAddProductSpecificationsController
                .onAddMetaImage(context),
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            validate: (value) => value!.noValidate(),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
          ),
          BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
            bloc: sellerAddProductSpecificationsController.metaImgCubit,
            builder: (context, state) {
              if (state is GenericUpdateState && state.data != null) {
                return Container(
                  height: 70.h,
                  width: 90.w,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
                  decoration: BoxDecoration(
                    borderRadius: Dimens.borderRadius5PX,
                    image: DecorationImage(
                      image: FileImage(
                        File(state.data!.path),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: InkWell(
                    onTap: sellerAddProductSpecificationsController
                        .removeMetaImage,
                    child: Icon(
                      Icons.cancel,
                      size: 30,
                      color: context.colors.primary,
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
