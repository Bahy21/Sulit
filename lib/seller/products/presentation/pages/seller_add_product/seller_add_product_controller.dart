part of 'seller_add_product_imports.dart';

class SellerAddProductController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController unitController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController minQtyController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();
  final TextEditingController videoLinkController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final GenericBloc<List<File>> galleryImagesCubit = GenericBloc([]);
  final GenericBloc<File?> thumbnailImageCubit = GenericBloc(null);

  DropDownModel? categoryModel;
  DropDownModel? brandModel;
  DropDownModel? videoModel;

  void onChangeCategory(DropDownModel? model) {
    if (model != null) {
      categoryModel = model;
    }
  }

  void onChangeBrand(DropDownModel? model) {
    if (model != null) {
      brandModel = model;
    }
  }

  void onChangeVideo(DropDownModel? model) {
    if (model != null) {
      videoModel = model;
    }
  }

  void onAddImages(BuildContext context) async {
    var images = await getIt<Utilities>().getImagesFiles(context);
    if (images != []) {
      galleryImagesCubit.state.data.addAll(images);
      galleryImagesCubit.onUpdateData(galleryImagesCubit.state.data);
    }
  }

  void removeGalleryImage(int index) {
    galleryImagesCubit.state.data.removeAt(index);
    galleryImagesCubit.onUpdateData(galleryImagesCubit.state.data);
  }

  void onAddThumbnailImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      // num bytes = (await image.readAsBytes()).lengthInBytes;
      // num kB = (await image.readAsBytes()).lengthInBytes;
      thumbnailImageCubit.onUpdateData(image);
    }
  }

  void removeThumbnailImage() {
    thumbnailImageCubit.onUpdateData(null);
  }
}
