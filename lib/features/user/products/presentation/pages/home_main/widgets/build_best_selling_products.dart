part of 'home_main_widgets_imports.dart';

class BuildBestSellingProducts extends StatelessWidget {
  final List<Product> bestSellingProducts;
  final HomeMainController controller ;

  const BuildBestSellingProducts(
      {super.key, required this.bestSellingProducts, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap5,
          const BuildHeaderTitle(title: "Just for you"),
          Flexible(
            child: SingleChildScrollView(
              padding: Dimens.paddingVertical10PX,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gaps.hGap16,
                  ...List.generate(
                    bestSellingProducts.length,
                    (index) {
                      return BuildProductItem(
                        productModel: bestSellingProducts[index],
                        onRefresh: () => controller.getHome(context),
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
