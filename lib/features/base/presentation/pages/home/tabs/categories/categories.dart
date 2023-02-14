part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  final HomeController homeController;

  const Categories({Key? key, required this.homeController}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final CategoriesController categoriesController = CategoriesController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: const BuildSearchAppBar(),
        body: Column(
          children: [
            BuildHomeMainAppBar(
              homeController: widget.homeController,
            ),
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.all(Dimens.dp20),
                itemCount: 4,
                itemBuilder: (_, index) => BuildCategoryItem(
                    categoriesController: categoriesController),
              ),
            ),
          ],
        ),
      ),
    );
  }
}