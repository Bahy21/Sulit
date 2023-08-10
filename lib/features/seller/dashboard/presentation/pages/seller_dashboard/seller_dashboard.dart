part of 'seller_dashboard_imports.dart';

class SellerDashboard extends StatefulWidget {
  const SellerDashboard({Key? key}) : super(key: key);

  @override
  State<SellerDashboard> createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
  late SellerDashboardController controller;

  @override
  void initState() {
    controller = SellerDashboardController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const BuildSellerDrawer(),
      appBar: BuildSellerAppBar(
        sellerDashboardController: controller,
      ),
      body: ListView(
        padding: const EdgeInsets.all(
          Dimens.dp20,
        ),
        children: const [
          BuildDashboardNews(),
          BuildSettings(),
          BuildTopProducts(),
        ],
      ),
    );
  }
}
