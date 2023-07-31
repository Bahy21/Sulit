part of 'home_imports.dart';

class Home extends StatefulWidget {
  final int index;

  const Home({Key? key, required this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeController homeController = HomeController();

  @override
  void initState() {
    homeController.initBottomNavigation(this, widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: homeController.onBackPressed,
      child: DefaultTabController(
        initialIndex: widget.index,
        length: 4,
        child: Scaffold(
          key: homeController.scaffoldKey,
          drawer: const BuildDrawer(),
          body: TabBarView(
            controller: homeController.tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              HomeMain(homeController: homeController),
              Categories(homeController: homeController),
              Notifications(homeController: homeController),
              More(homeController: homeController),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: context.colors.primary,
            onPressed: () => AutoRouter.of(context).push(const CartRoute()),
            child: const Icon(Icons.shopping_cart),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BuildBottomNavBar(controller: homeController),
        ),
      ),
    );
  }
}
