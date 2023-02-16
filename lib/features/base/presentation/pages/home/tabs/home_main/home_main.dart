part of 'home_main_imports.dart';

class HomeMain extends StatefulWidget {
  final HomeController homeController;

  const HomeMain({Key? key, required this.homeController}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  HomeMainController controller = HomeMainController();

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
              const BuildFlashSaleCounter(),
              DefaultButton(
                margin:
                    const EdgeInsets.only(bottom: 10, left: 16, right: 16).r,
                onTap: () {},
                title: "View More",
              ),
              Gaps.vGap15,
              const BuildTodayProducts(),
              Gaps.vGap15,
              const BuildHomeListProducts(),
              Gaps.vGap15,
              const BuildFeaturedProducts(),
              Gaps.vGap15,
              const BuildBestSellingProducts(),
              Gaps.vGap15,
              const BuildTopCategories(),
              Gaps.vGap15,
              const BuildTopBrands()
            ],
          ),
        ),
      ),
    );
  }
}
