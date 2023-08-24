part of 'product_details_widgets_imports.dart';

class BuildDetailsView extends StatelessWidget {
  final ProductDetailsController controller;
  final ProductDetailsDomainModel detailsModel;

  const BuildDetailsView(
      {super.key, required this.controller, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          BuildProductDetailsSwiper(
            innerBoxIsScrolled: innerBoxIsScrolled,
            productModel: detailsModel.product,
            controller: controller,
          ),
        ],
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            BuildProductInfo(
              controller: controller,
              productModel: detailsModel.product,
            ),
            BuildProductSpecifications(
                controller: controller, productModel: detailsModel.product),
            BuildProductReviews(allReviews: detailsModel.product.reviews ?? []),
            BuildTopSellingProducts(
              topProducts: detailsModel.topProducts,
              controller: controller,
            ),
            BuildRelatedProducts(
              relatedProducts: detailsModel.relatedProducts,
              controller: controller,
            ),
            BuildOtherQuestions(productQueries: detailsModel.productQueries),
            BuildOwnQuestions(productQueries: detailsModel.productQueries),
            BuildProductQueries(controller: controller),
          ],
        ),
      ),
    );
  }
}
