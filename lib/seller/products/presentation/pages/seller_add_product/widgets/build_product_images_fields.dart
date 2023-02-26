part of 'seller_add_product_widgets_imports.dart';

class BuildProductImagesFields extends StatelessWidget {
  final SellerAddProductController sellerAddProductController;

  const BuildProductImagesFields(
      {super.key, required this.sellerAddProductController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: 'Product Images',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gallery Images ",
            style: AppTextStyle.s14_w400(
              color: context.colors.black,
            ),
          ),
          BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
            bloc: sellerAddProductController.galleryImagesCubit,
            builder: (context, state) {
              if (state is GenericUpdateState && state.data.isNotEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GenericTextField(
                      fieldTypes: FieldTypes.clickable,
                      type: TextInputType.text,
                      hint: "${state.data.length} Files selected",
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
                          style: AppTextStyle.s14_w600(
                              color: context.colors.white),
                        ),
                      ),
                      onTab: () =>
                          sellerAddProductController.onAddImages(context),
                      margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                      validate: (value) => value!.noValidate(),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: Dimens.dp10, vertical: Dimens.dp15),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: Dimens.dp10),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        alignment: WrapAlignment.start,
                        children: List.generate(
                          state.data.length,
                          (index) => Container(
                            height: 70.h,
                            width: 90.w,
                            alignment: Alignment.topRight,
                            decoration: BoxDecoration(
                              borderRadius: Dimens.borderRadius5PX,
                              image: DecorationImage(
                                image: FileImage(
                                  File(state.data[index].path),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: InkWell(
                              onTap: () => sellerAddProductController
                                  .removeGalleryImage(index),
                              child: Icon(
                                Icons.cancel,
                                size: 30,
                                color: context.colors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              } else {
                return GenericTextField(
                  fieldTypes: FieldTypes.clickable,
                  type: TextInputType.text,
                  hint: "Pick Image",
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
                  onTab: () => sellerAddProductController.onAddImages(context),
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  validate: (value) => value!.noValidate(),
                );
              }
            },
          ),
          Row(
            children: [
              Text(
                "Thumbnail Image ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
              Text(
                "(290*300)",
                style: AppTextStyle.s12_w400(
                  color: context.colors.primary,
                ),
              ),
            ],
          ),
          GenericTextField(
            fieldTypes: FieldTypes.clickable,
            type: TextInputType.text,
            hint: "Pick Image",
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
            onTab: () =>
                sellerAddProductController.onAddThumbnailImage(context),
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            validate: (value) => value!.noValidate(),
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp10, vertical: Dimens.dp15),
          ),
          BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
            bloc: sellerAddProductController.thumbnailImageCubit,
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
                    onTap: sellerAddProductController.removeThumbnailImage,
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
