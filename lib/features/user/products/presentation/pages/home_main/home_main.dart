part of 'home_main_imports.dart';

class HomeMain extends StatefulWidget {
  final HomeController homeController;

  const HomeMain({Key? key, required this.homeController}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  final HomeMainController controller = HomeMainController();

  @override
  void initState() {
    controller.getHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: BuildSearchAppBar(homeController: widget.homeController),
          body: ListView(
            children: [
              const BuildHomeSwiper(),
              const BuildBanners(),
              // const BuildFlashSaleCounter(),

              // BuildHomeCategories(),
              Gaps.vGap10,
              const BuildPopularProducts(),
              Gaps.vGap10,
              const BuildBanners(),
              Gaps.vGap10,
              const BuildBestSellingProducts(),
              Gaps.vGap15,
              const BuildHomeNewProducts(),
              Gaps.vGap15,
              const BuildFeaturedProducts(),
              Gaps.vGap15,
              const BuildTopCategories(),
              Gaps.vGap15,
               BuildTopBrands()
            ],
          ),
        ),
      ),
    );
  }
}
