part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final CategoriesController categoriesController = CategoriesController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const BuildSearchAppBar(),
        body: ListView.builder(
          padding: const EdgeInsets.all(Dimens.dp20),
          itemCount: 4,
          itemBuilder: (_, index) =>
              BuildCategoryItem(categoriesController: categoriesController),
        ),
      ),
    );
  }
}
