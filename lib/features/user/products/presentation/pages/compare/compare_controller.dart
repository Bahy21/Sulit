part of 'compare_imports.dart';

class CompareController {
  final GenericBloc<List<ProductsTableData>> productsBloc = GenericBloc([]);

  CompareController(BuildContext context) {
    getComparedProducts(context);
  }

  Future<void> getComparedProducts(BuildContext context) async {
    return await getIt<ComparedProductsDb>().getItems().then(
          (value) => productsBloc.onUpdateData(value),
        );
  }

  List<String> headers = ["Name", "Image", "Price", "Brand", "Category", ""];
}
