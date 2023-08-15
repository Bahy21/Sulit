part of 'product_details_widgets_imports.dart';

class BuildTopSellingProducts extends StatelessWidget {
  final List<Product> topProducts;

  const BuildTopSellingProducts({super.key, required this.topProducts});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 250.spMin,
        padding: Dimens.paddingAll8PX,
        margin: Dimens.paddingHorizontal15PX,
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius5PX,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap10,
            Text(
              "Top Selling Products",
              style: AppTextStyle.s15_w700(
                color: context.colors.black,
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: Dimens.paddingVertical10PX,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    topProducts.length,
                    (index) =>
                        BuildProductItem(productModel: topProducts[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
