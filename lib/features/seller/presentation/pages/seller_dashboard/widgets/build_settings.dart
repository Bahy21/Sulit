part of 'seller_dashboard_widgets_imports.dart';

class BuildSettings extends StatelessWidget {
  const BuildSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: [
          BuildSettingItem(
            title: "Money Withdraw ",
            iconData: CupertinoIcons.creditcard,
            onTap: () =>
                AutoRouter.of(context).push(const SellerMoneyWithDrawRoute()),
          ),
          BuildSettingItem(
            title: "Add New Product",
            iconData: CupertinoIcons.add,
            onTap: () =>
                AutoRouter.of(context).push(const SellerAddProductRoute()),
          ),
          BuildSettingItem(
            title: "Shop Settings",
            iconData: Icons.storefront_outlined,
            onTap: () {},
          ),
          BuildSettingItem(
            title: "Payment Settings",
            iconData: Icons.credit_score_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
