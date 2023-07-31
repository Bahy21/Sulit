part of 'category_details_imports.dart';

class CategoryDetails extends StatefulWidget {
  final String title;

  const CategoryDetails({super.key, required this.title});

  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  final CategoryDetailsController controller =
      CategoryDetailsController();

  @override
  void initState() {
    controller.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: controller.scaffold,
      appBar: const BuildCustomAppBar(),
      drawer: BuildFilterDrawer(
          categoryDetailsController: controller),
      body: Column(
        children: [
          BuildFilterBar(
            categoryName: widget.title,
            categoryDetailsController: controller,
          ),
          BuildSortBar(categoryDetailsController: controller),
          const BuildProducts(),
        ],
      ),
    );
  }
}
