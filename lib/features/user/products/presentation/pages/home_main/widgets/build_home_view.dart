part of 'home_main_widgets_imports.dart';

class BuildHomeView extends StatelessWidget {
  final HomeDomainModel homeDomainModel;

  const BuildHomeView({super.key, required this.homeDomainModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BuildHomeSwiper(slider: homeDomainModel.sliders),
        BuildBanners(banners: homeDomainModel.bannersOne),
        // const BuildFlashSaleCounter(),

        // BuildHomeCategories(),
        Gaps.vGap5,
        BuildPopularProducts(mostPopularProducts: homeDomainModel.mostPopular),
        BuildBanners(banners: homeDomainModel.bannersTwo),
        BuildBestSellingProducts(
            bestSellingProducts: homeDomainModel.bestSellingProducts),
        BuildHomeNewProducts(newestProducts: homeDomainModel.newestProducts),
        BuildFeaturedProducts(
            featuredProducts: homeDomainModel.featuredProducts),

         BuildTopCategories(categories: homeDomainModel.categories),
        BuildTopBrands(
          brandList: homeDomainModel.topBrands,
        )
      ],
    );
  }
}
