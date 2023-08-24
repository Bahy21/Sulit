part of 'home_main_widgets_imports.dart';

class BuildFeaturedProducts extends StatelessWidget {
  final List<Product> featuredProducts;
  final HomeMainController controller;

  const BuildFeaturedProducts(
      {super.key, required this.featuredProducts, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          const BuildHeaderTitle(title: "Featured Products"),
          Flexible(
            child: SingleChildScrollView(
              padding: Dimens.paddingVertical10PX,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gaps.hGap10,
                  ...List.generate(
                    featuredProducts.length,
                    (index) {
                      return Padding(
                        padding: Dimens.paddingHorizontal5PX,
                        child: BuildProductItem(
                          productModel: featuredProducts[index],
                          onFavRefresh: () => controller.onChangeFav(
                            featuredProducts[index],
                          ),
                        ),
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
