part of 'home_main_widgets_imports.dart';

class BuildHomeCategories extends StatelessWidget {
  final List<CategoryModel> categories;

  const BuildHomeCategories({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          const BuildHeaderTitle(title: "Categories"),
          Flexible(
            child: SingleChildScrollView(
              padding: Dimens.paddingVertical10PX,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gaps.hGap16,
                  ...List.generate(
                    categories.length,
                    (index) {
                      return BuildHomeCategoryItem(
                        categoryModel: categories[index],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
