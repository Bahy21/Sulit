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
      appBar: BuildSellerAppBar(
          sellerDashboardController: sellerDashboardController),
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp20),
        children: [
          const BuildDashboardItem(
            iconData: CupertinoIcons.cube_box,
            title: "Products",
            details: "24",
          ),
          const BuildDashboardItem(
            iconData: CupertinoIcons.star,
            title: "Ratings",
            details: "0",
          ),
          const BuildDashboardItem(
            iconData: CupertinoIcons.square_list,
            title: "Total Order",
            details: "0",
          ),
          const BuildDashboardItem(
            iconData: Icons.insert_chart_outlined,
            title: "Total Sales",
            details: "${12} د.إ ",
          ),
          // Wrap(
          //   alignment: WrapAlignment.center,
          //   spacing: 10,
          //   runSpacing: 10,
          //   children: [
          //     BuildSettingItem(
          //       title: "Money Withdraw",
          //       iconData: Icons.insert_chart_outlined,
          //       onTap: () {},
          //     ),
          //     BuildSettingItem(
          //       title: "Add New Product",
          //       iconData: Icons.insert_chart_outlined,
          //       onTap: () {},
          //     ),
          //     BuildSettingItem(
          //       title: "Shop Settings",
          //       iconData: Icons.insert_chart_outlined,
          //       onTap: () {},
          //     ),
          //     BuildSettingItem(
          //       title: "Payment Settings",
          //       iconData: Icons.insert_chart_outlined,
          //       onTap: () {},
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
