part of 'seller_add_product_specifications_imports.dart';

class SellerAddProductSpecificationsController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController unitPriceController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController startDiscountDate = TextEditingController();
  final TextEditingController endDiscountDate = TextEditingController();
  final TextEditingController qtyController = TextEditingController();
  final TextEditingController skuController = TextEditingController();
  final TextEditingController externalLinkController = TextEditingController();
  final TextEditingController linkBtnController = TextEditingController();

  final TextEditingController metaTitleController = TextEditingController();
  final TextEditingController metaDescController = TextEditingController();

  final TextEditingController shippingDaysController = TextEditingController();
  final TextEditingController taxController = TextEditingController();
  final TextEditingController stockQtyController = TextEditingController();

  final GenericBloc<bool> showColorsCubit = GenericBloc(false);

  final GenericBloc<List<String>> attributesCubit = GenericBloc([]);

  final GenericBloc<bool> showStockQtyCubit = GenericBloc(false);
  final GenericBloc<bool> showStockTextCubit = GenericBloc(false);
  final GenericBloc<bool> hideStockCubit = GenericBloc(false);

  final GenericBloc<String> startDiscountDateCubit = GenericBloc("");
  final GenericBloc<String> endDiscountDateCubit = GenericBloc("");

  final GenericBloc<File?> pdfCubit = GenericBloc(null);
  final GenericBloc<File?> metaImgCubit = GenericBloc(null);
  DateTime startDate = DateTime.now();

  DropDownModel? discountModel;
  DropDownModel? taxModel;

  void onChangeDiscount(DropDownModel? model) {
    if (model != null) {
      discountModel = model;
    }
  }

  void onChangeTax(DropDownModel? model) {
    if (model != null) {
      taxModel = model;
    }
  }

  void onAddPdf(BuildContext context) async {
    var pdf = await getIt<Utilities>().getAPdfFile();
    pdfCubit.onUpdateData(pdf);
  }

  void removePdf() {
    pdfCubit.onUpdateData(null);
  }

  void onAddMetaImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    metaImgCubit.onUpdateData(image);
  }

  void removeMetaImage() {
    metaImgCubit.onUpdateData(null);
  }

  void setStartDate(BuildContext context) {
    AdaptivePicker.datePicker(
      context: context,
      title: "Start Date",
      initial: DateTime.now(),
      isDateTime: true,
      onConfirm: (date) {
        if (date != null) {
          String dateStr = DateFormat("MM/dd/yyyy hh:mm a").format(date);
          startDiscountDateCubit.onUpdateData(dateStr);
          startDate = date;
        }
      },
    );
  }

  void setEndDate(BuildContext context) {
    AdaptivePicker.datePicker(
      context: context,
      title: "End Date",
      initial: startDate,
      minDate: startDate,
      isDateTime: true,
      onConfirm: (date) {
        if (date != null) {
          String dateStr = DateFormat("MM/dd/yyyy hh:mm a").format(date);
          endDiscountDateCubit.onUpdateData(dateStr);
        }
      },
    );
  }

  void onAddAttribute(List<String> data) {
    attributesCubit.onUpdateData([]);
    attributesCubit.state.data.addAll(data);
    attributesCubit.onUpdateData(attributesCubit.state.data);
  }
}
