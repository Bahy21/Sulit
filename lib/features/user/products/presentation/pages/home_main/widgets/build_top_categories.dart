part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  final List<CategoryModel> categories;

  const BuildTopCategories({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap5,
        BuildCustomHeaderTitle(
          title: "Top 10 Categories",
          btnText: "View All Categories",
          onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
        ),
        Gaps.vGap5,
        ...List.generate(
         categories.length,
          (index) => BuildCategoriesItem(categoryModel: categories[index]),
        )
      ],
    );
  }
}
