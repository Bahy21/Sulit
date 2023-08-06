part of 'home_main_widgets_imports.dart';

class BuildHomeNewProducts extends StatelessWidget {
  final List<Product> newestProducts;

  const BuildHomeNewProducts({super.key, required this.newestProducts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          const BuildHeaderTitle(title: "New Products"),
          Flexible(
            child: SingleChildScrollView(
              padding: Dimens.paddingVertical10PX,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Gaps.hGap16,
                ...List.generate(
                  newestProducts.length,
                  (index) {
                    return BuildProductItem(
                      productModel: newestProducts[index],
                    );
                  },
                )
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
