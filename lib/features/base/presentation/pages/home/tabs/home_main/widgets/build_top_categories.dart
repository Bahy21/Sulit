part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  const BuildTopCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildHeaderTitle(
            title: "Top 10 Categories",
            btnText: "View All Categories",
            onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
          ),
          Gaps.vGap10,
          ...List.generate(
              3,
              (index) => const BuildCategoriesItem(
                    title: 'Top Seller',
                    image:
                        "https://static.thenounproject.com/png/1041139-200.png",
                  ))
        ],
      ),
    );
  }
}
