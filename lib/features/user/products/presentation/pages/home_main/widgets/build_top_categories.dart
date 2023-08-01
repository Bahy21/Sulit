part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  final List<CategoryDomainModel> topCategories;

  const BuildTopCategories({super.key, required this.topCategories});

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
          topCategories.length,
          (index) => BuildTopCategoriesItem(categoryModel: topCategories[index]),
        )
      ],
    );
  }
}
