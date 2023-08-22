part of 'product_details_widgets_imports.dart';

class BuildDetailsView extends StatelessWidget {
  final ProductDetailsController controller;
  final ProductDetailsDomainModel detailsModel;

  const BuildDetailsView(
      {super.key, required this.controller, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (_, innerBoxIsScrolled) => [
        BuildProductDetailsSwiper(
          innerBoxIsScrolled: innerBoxIsScrolled,
          productModel: detailsModel.product,
        ),
      ],
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          BuildProductInfo(controller: controller,productModel:detailsModel.product),
          BuildProductSpecifications(productDetailsController: controller),
          const BuildProductReviews(),
          // const BuildProductShare(),
          BuildTopSellingProducts(topProducts: detailsModel.topProducts),
          BuildRelatedProducts(relatedProducts: detailsModel.relatedProducts),
          BuildRelatedQuestions(productDetailsController: controller),
          const BuildProductQueries(),
        ],
      ),
    );
  }
}
