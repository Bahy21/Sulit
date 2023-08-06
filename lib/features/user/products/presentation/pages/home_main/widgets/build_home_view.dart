part of 'home_main_widgets_imports.dart';

class BuildHomeView extends StatelessWidget {
  final HomeDomainModel homeDomainModel;

  const BuildHomeView({super.key, required this.homeDomainModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.paddingVertical10PX,
      children: [
        BuildHomeSwiper(slider: homeDomainModel.sliders),
        BuildBanners(banners: homeDomainModel.bannersOne),
        BuildDeals(flashSales: homeDomainModel.flashSales),
        BuildBanners(banners: homeDomainModel.bannersTwo),
        BuildPopularProducts(mostPopularProducts: homeDomainModel.mostPopular),
        BuildBestSellingProducts(
            bestSellingProducts: homeDomainModel.bestSellingProducts),
        BuildHomeNewProducts(newestProducts: homeDomainModel.newestProducts),
        BuildFeaturedProducts(
            featuredProducts: homeDomainModel.featuredProducts),
        BuildTopCategories(topCategories: homeDomainModel.topCategories),
        BuildTopBrands(
          brandList: homeDomainModel.topBrands,
        )
      ],
    );
  }
}
