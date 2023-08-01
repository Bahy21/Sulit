part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  final HomeController homeController;

  const Categories({Key? key, required this.homeController}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final CategoriesController controller = CategoriesController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BuildSearchAppBar(homeController: widget.homeController),
        body: GenericListView(
          type: ListViewType.gridApi,
          onRefresh: controller.getCategories,
          params: [context],
          cubit: controller.categoriesCubit,
          runSpacing: 15,
          spacing: 15,
          gridCrossCount: 2,
          gridItemHeight: 150.spMin,
          padding: Dimens.paddingAll15PX,
          itemBuilder: (_, index, item) =>
              BuildCategoryItem(categoryModel: item),
          loadingWidget: const BuildLoadingCategoriesView(),
        ),
      ),
    );
  }
}
