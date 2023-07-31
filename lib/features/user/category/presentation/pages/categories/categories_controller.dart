part of 'categories_imports.dart';

class CategoriesController {
  final GenericBloc<bool> showCategoriesCubit = GenericBloc(false);
  final GenericBloc<List<CategoryDomainModel>> categoriesCubit = GenericBloc([]);

  void getCategories(BuildContext context, {bool refresh = true}) async {
    var result = await GetCategories().call(refresh);
    categoriesCubit.onUpdateData(result);
  }
}
