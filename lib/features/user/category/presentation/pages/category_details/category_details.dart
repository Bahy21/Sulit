part of 'category_details_imports.dart';

class CategoryDetails extends StatefulWidget {
  final Category categoryModel;

  const CategoryDetails({super.key, required this.categoryModel});

  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  final CategoryDetailsController categoryDetailsController =
      CategoryDetailsController();

  @override
  void initState() {
    categoryDetailsController.initData(context,widget.categoryModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: categoryDetailsController.scaffold,
      appBar: DefaultAppBar(title: widget.categoryModel.name),
      drawer: BuildFilterDrawer(
          categoryDetailsController: categoryDetailsController),
      body: Column(
        children: [
          BuildAllCategoriesView(
              categoryDetailsController: categoryDetailsController),
          BuildFilterBar(categoryDetailsController: categoryDetailsController),
          BuildProducts(controller: categoryDetailsController),
        ],
      ),
    );
  }
}
