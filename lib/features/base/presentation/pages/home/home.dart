part of 'home_imports.dart';

class Home extends StatefulWidget {
  final int index;
  const Home({Key? key, required this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.initBottomNavigation(this,widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: widget.index,
      length: 4,
      child: Scaffold(
        key: controller.scaffoldKey,
        drawer: const BuildDrawer(),
        body: TabBarView(
          controller: controller.tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
             HomeMain(homeController: controller,),
            const Categories(),
            const Notifications(),
            const More(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: context.colors.primary,
          onPressed: () =>AutoRouter.of(context).push(const CartRoute()),
          child: const Icon(Icons.shopping_cart),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BuildBottomNavBar(controller: controller),
      ),
    );
  }
}
