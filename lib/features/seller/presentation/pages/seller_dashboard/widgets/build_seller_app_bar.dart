part of 'seller_dashboard_widgets_imports.dart';

class BuildSellerAppBar extends StatelessWidget implements PreferredSizeWidget {
  final SellerDashboardController sellerDashboardController;

  const BuildSellerAppBar({super.key, required this.sellerDashboardController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: .5,
      backgroundColor: context.colors.white,
      toolbarHeight: 70,
      leading: IconButton(
        onPressed: () =>
            sellerDashboardController.scaffoldKey.currentState!.openDrawer(),
        icon: Icon(
          Icons.menu,
          color: context.colors.black,
          size: 25,
        ),
      ),
      title: Image.asset(Res.suliitLogo, height: 30, width: 150),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: context.colors.black,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.translate,
            color: context.colors.primary,
            size: 25,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
