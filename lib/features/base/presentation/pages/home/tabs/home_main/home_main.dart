part of 'home_main_imports.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildHomeMainAppBar(
                controller: controller,
              ),
              Flexible(
                child: ListView(
                  children: [
                    const BuildHomeSwiper(),
                    const BuildFlashSaleCounter(),
                    DefaultButton(
                      margin:
                          const EdgeInsets.only(bottom: 10, left: 16, right: 16)
                              .r,
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
                    const BuildBestSellingProducts()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
