part of 'seller_dashboard_imports.dart';

class SellerDashboard extends StatefulWidget {
  const SellerDashboard({Key? key}) : super(key: key);

  @override
  State<SellerDashboard> createState() => _SellerDashboardState();
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
          BuildDashboardNews(),
          BuildSettings(),
          BuildTopProducts(),
        ],
      ),
    );
  }
}
