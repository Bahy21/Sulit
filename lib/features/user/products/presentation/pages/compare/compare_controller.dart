part of 'compare_imports.dart';

class CompareController {
  final GenericBloc<List<ProductsTableData>> productsBloc = GenericBloc([]);

  CompareController() {
    getComparedProducts();
  }

  Future<void> getComparedProducts() async {
    return await getIt<ComparedProductsDb>().getItems().then(
          (value) => productsBloc.onUpdateData(value),
        );
  }

  List<String> headers = ["Name", "Image", "Price", "Brand", "Category", ""];

}
