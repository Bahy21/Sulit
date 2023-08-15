part of 'product_details_widgets_imports.dart';

class BuildProductSpecifications extends StatelessWidget {
  final ProductDetailsController productDetailsController;

  const BuildProductSpecifications(
      {super.key, required this.productDetailsController});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
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
            BuildProductAttributes(
                productDetailsController: productDetailsController),
            BuildProductColors(
                productDetailsController: productDetailsController),
            BuildProductQty(
                productDetailsController: productDetailsController),
          ],
        ),
      ),
    );
  }
}
