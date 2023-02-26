part of 'category_details_imports.dart';

class CategoryDetails extends StatefulWidget {
  final String title;

  const CategoryDetails({super.key, required this.title});

  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  final CategoryDetailsController categoryDetailsController =
      CategoryDetailsController();

  @override
  void initState() {
    categoryDetailsController.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: categoryDetailsController.scaffold,
      appBar: const BuildCustomAppBar(),
      drawer: BuildFilterDrawer(
          categoryDetailsController: categoryDetailsController),
      body: Column(
        children: [
          BuildFilterBar(
            categoryName: widget.title,
            categoryDetailsController: categoryDetailsController,
          ),
          BuildSortBar(categoryDetailsController: categoryDetailsController),
          const BuildProducts(),
        ],
      ),
    );
  }
}
