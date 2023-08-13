part of'compare_imports.dart';
class CompareController {
  final GenericBloc<List<ProductsTableData>> productsBloc = GenericBloc([]);

  CompareController (){
    getComparedProducts();
  }

  Future<void> getComparedProducts() async {
    return await GetComparedItems().call(NoParams()).then(
          (value) => productsBloc.onUpdateData(value),
        );
  }


}