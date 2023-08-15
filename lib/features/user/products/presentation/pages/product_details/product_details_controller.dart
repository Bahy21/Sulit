part of 'product_details_imports.dart';

class ProductDetailsController {
  GenericBloc<int> isSelected = GenericBloc(0);
  GenericBloc<int> selectedColorCubit = GenericBloc(0);
  GenericBloc<bool> questionsCubit = GenericBloc(false);
  final GenericBloc<ProductDetailsDomainModel?> detailsCubit =
      GenericBloc(null);

  ProductDetailsController(BuildContext context, int productId) {
    getProductDetails(context, productId, refresh: false);
    getProductDetails(context, productId);
  }

  void getProductDetails(BuildContext context, int productId,
      {bool refresh = true}) async {
    var params = _detailsParams(refresh, productId);
    var result = await GetProductDetails().call(params);
    detailsCubit.onUpdateData(result);
  }

  GenericParams _detailsParams(bool refresh, int productId) {
    return GenericParams(refresh: refresh, id: productId);
  }
}
