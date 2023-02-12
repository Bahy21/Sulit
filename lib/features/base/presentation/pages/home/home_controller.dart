part of 'home_imports.dart';

class HomeController {
  final GenericBloc<int> homeTabCubit = GenericBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;


  List<IconData> tabs = [
    Icons.home,
    Icons.list,
    Icons.notifications,
    Icons.account_circle
  ];
  List<String> tabsText = ["Home", "Categories", "Notifications", "Account"];

  void initBottomNavigation(TickerProvider ticker) {
    tabController = TabController(length: 4, vsync: ticker);
  }

  void animateTabsPages(int index, BuildContext context) {
    if (index != homeTabCubit.state.data) {
      homeTabCubit.onUpdateData(index);
      tabController.animateTo(index);
    }
  }
}
