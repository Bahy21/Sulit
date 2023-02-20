part of 'seller_dashboard_imports.dart';

class SellerDashboard extends StatefulWidget {
  const SellerDashboard({Key? key}) : super(key: key);

  @override
  _SellerDashboardState createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
  final SellerDashboardController sellerDashboardController =
      SellerDashboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sellerDashboardController.scaffoldKey,
      drawer: const BuildSellerDrawer(),
      appBar: BuildSellerAppBar(
          sellerDashboardController: sellerDashboardController),
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp20),
        children: const [
          BuildDashboardItem(
            iconData: CupertinoIcons.cube_box,
            title: "Products",
            details: "24",
          ),
          BuildDashboardItem(
            iconData: CupertinoIcons.star,
            title: "Ratings",
            details: "0",
          ),
          BuildDashboardItem(
            iconData: CupertinoIcons.square_list,
            title: "Total Order",
            details: "0",
          ),
          BuildDashboardItem(
            iconData: Icons.insert_chart_outlined,
            title: "Total Sales",
            details: "${12} د.إ ",
          ),
          BuildSettings(),
        ],
      ),
    );
  }
}
