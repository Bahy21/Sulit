part of 'dashboard_imports.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Dashboard", showBack: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        children: [
          const BuildDefaultShippingAddress(),
          Gaps.vGap10,
          BuildDashboardItem(
            colors:  [

              context.colors.blue,
              context.colors.blueAccent,


            ],
            title: "1 Product",
            subTitle: "in your cart",
          ),
          BuildDashboardItem(
            colors:  [
              context.colors.appBarColor,
              context.colors.blueAccent,

            ],
            title: "4 Products",
            subTitle: "in your WishList",
          ),
          BuildDashboardItem(
            colors:  [
              context.colors.appBarColor,
              context.colors.secondary,

            ],
            title: "0 Product",
            subTitle: "you Ordered",
          )
        ],
      )
    );
  }
}
