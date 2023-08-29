// ignore_for_file: use_build_context_synchronously
part of 'product_details_imports.dart';

class ProductDetailsController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController queryController = TextEditingController();
  final GenericBloc<int> qtyCubit = GenericBloc(1);
  final GenericBloc<int> isSelected = GenericBloc(0);
  final GenericBloc<int> selectedColorCubit = GenericBloc(0);
  final GenericBloc<ProductDetailsDomainModel?> detailsCubit =
      GenericBloc(null);
  late bool isResale;
  List<String> selectedVariants = [];
  List<String> basicImage = [];

  ProductDetailsController(
      BuildContext context, int productId, bool productResale) {
    getProductDetails(context, productId, refresh: false);
    getProductDetails(context, productId);
    isResale = productResale;
  }



  void getProductDetails(BuildContext context, int productId,
      {bool refresh = true}) async {
    var params = _detailsParams(refresh, productId);
    var result = await GetProductDetails().call(params);
    detailsCubit.onUpdateData(result);
    basicImage = detailsCubit.state.data!.product.images;
    print(">>>>>${detailsCubit.state.data?.product.variant?.currentStock}");
    _initVariants(context);
    print(">>>>>${detailsCubit.state.data?.product.variant?.currentStock}");
  }

  

  void _initVariants(BuildContext context) {
    detailsCubit.state.data?.product.choiceOptions?.map((e) {
      e.selectedAttribute.add(e.options.first);
      e.hasValue = true;
    }).toList();
    var selectedList = detailsCubit.state.data!.product.choiceOptions!
        .map((e) => e.selectedAttribute)
        .toList();
    selectedVariants = selectedList.expand((element) => element).toList();
    log("@@@@@@@@${selectedVariants}");
    if (selectedVariants.isNotEmpty) getVariantPrice(context);
  }

  void getVariantPrice(BuildContext context) async {
    var params = _variantPriceParams();
    log("###${params.paramToQuery()}");
    log("###${params.toJson()}");
    var details = detailsCubit.state.data;
    var result = await GetVariantPrice().call(params);
    if (result != null) {
      if (result.variant!.image != "") {
        details?.product.images = [result.variant!.image, ...basicImage];
      } else {
        details?.product.images = basicImage;
      }
      details?.product.variant = result.variant;
      detailsCubit.onUpdateData(details);
    }
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist;
    detailsCubit.onUpdateData(detailsCubit.state.data);
  }

  void onSelectAttributes(BuildContext context, List<ProductOptions> model,
      int index, int position) {
    List<String> selected = [];
    var optionItem = model[index];
    var attributes = optionItem.selectedAttribute;

    if (optionItem.hasValue == true) {
      attributes.clear();
      attributes.add(optionItem.options[position]);
    } else {
      attributes.add(optionItem.options[position]);
    }
    optionItem.hasValue = true;
    model.where((element) => element.hasValue == true).map((e) {
      selected = [...selected, ...e.selectedAttribute];
      selectedVariants = selected;
      return e;
    }).toList();
    qtyCubit.onUpdateData(1);
    detailsCubit.onUpdateData(detailsCubit.state.data);
    getVariantPrice(context);
  }

  void sendQuery(BuildContext context) async {
    var params = _sendQueryParams();
    if (formKey.currentState!.validate()) {
      var result = await SendQuery().call(params);
      if (result != null) {
        queryController.clear();
        detailsCubit.state.data?.productQueries.ownProductQueries.add(result);
        detailsCubit.onUpdateData(detailsCubit.state.data);
      }
    }
  }

  void increaseQty() {
    var variantPrice = detailsCubit.state.data?.product.variant;
    var price = double.parse(variantPrice!.calculablePrice);
    price = price / qtyCubit.state.data;
    if (variantPrice.currentStock >= 1) {
      if (variantPrice.currentStock > qtyCubit.state.data) {
        var newQty = qtyCubit.state.data + 1;
        var priceQty = newQty * price;
        variantPrice.calculablePrice = priceQty.toString();
        qtyCubit.onUpdateData(newQty);
        detailsCubit.onUpdateData(detailsCubit.state.data);
      } else {
        CustomToast.showSimpleToast(
            msg: "Only ${variantPrice.currentStock} available in stock");
        return;
      }
    } else {
      CustomToast.showSimpleToast(msg: "Out of stock");
      return;
    }
  }

  void decreaseQty() {
    var variantPrice = detailsCubit.state.data?.product.variant;
    var price = double.parse(variantPrice!.calculablePrice);
    if (qtyCubit.state.data > 1) {
      var priceQty = price - (price / qtyCubit.state.data);
      var newQty = qtyCubit.state.data - 1;
      variantPrice.calculablePrice = priceQty.toString();
      qtyCubit.onUpdateData(newQty);
      detailsCubit.onUpdateData(detailsCubit.state.data);
    }
  }

  GenericParams _detailsParams(bool refresh, int productId) {
    return GenericParams(refresh: refresh, id: productId);
  }

  SendQueryParams _sendQueryParams() {
    return SendQueryParams(
      id: detailsCubit.state.data!.product.id,
      question: queryController.text,
    );
  }

  VariantPriceParams _variantPriceParams() {
    var resellerId = detailsCubit.state.data!.product.sellerId;
    return VariantPriceParams(
      id: detailsCubit.state.data!.product.id,
      resellerId: isResale ? resellerId : 0,
      variants: selectedVariants.join(','),
    );
  }
}
