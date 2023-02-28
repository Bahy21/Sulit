part of 'seller_dashboard_widgets_imports.dart';

class BuildSellerDrawer extends StatefulWidget {
  const BuildSellerDrawer({Key? key}) : super(key: key);

  @override
  State<BuildSellerDrawer> createState() => _BuildSellerDrawerState();
}

class _BuildSellerDrawerState extends State<BuildSellerDrawer> {
  GenericBloc<bool> isVisible = GenericBloc(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.drawerColor,
      width: MediaQuery.of(context).size.width * .8,
      child: Column(
        children: [
          const BuildSellerDrawerHeader(),
          Flexible(
              child: ListView(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 20).r,
            children: [
              BuildDrawerItem(
                title: 'DashBoard',
                icon: Icons.home_outlined,
                onTap: () =>
                    AutoRouter.of(context).push(const SellerDashboardRoute()),
              ),
              BuildDrawerItem(
                title: 'Manage Profile',
                icon: Icons.person_2_outlined,
                onTap: () =>
                    AutoRouter.of(context).push(const SellerProfileRoute()),
              ),
              BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: isVisible,
                builder: (context, state) {
                  return Column(
                    children: [
                      BuildDrawerItem(
                        haveIcon: true,
                        dropIcon: state.data
                            ? Icons.arrow_drop_down
                            : Icons.arrow_right,
                        title: 'Products',
                        icon: Icons.shopping_bag_outlined,
                        onTap: () => isVisible.onUpdateData(!state.data),
                        haveDrawer: !state.data,
                      ),
                      Visibility(
                        visible: state.data,
                        child: Column(
                          children: [
                            BuildSubProductItem(
                              text: 'Products',
                              onTap: () => AutoRouter.of(context)
                                  .push(const SellerProductsRoute()),
                            ),
                            BuildSubProductItem(
                              text: 'Product Bulk Upload',
                              onTap: () => AutoRouter.of(context)
                                  .push(const SellerProductBulkRoute()),
                            ),
                            BuildSubProductItem(
                              text: 'Digital Products',
                              onTap: () => AutoRouter.of(context)
                                  .push(const SellerDigitalProductsRoute()),
                            ),
                            BuildSubProductItem(
                              text: 'Product Review',
                              onTap: () => AutoRouter.of(context)
                                  .push(const SellerProductReviewRoute()),
                            ),
                            if (state.data)
                              Divider(
                                color: context.colors.greyWhite,
                              )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              BuildDrawerItem(
                title: 'Reselling',
                icon: Icons.present_to_all,
                onTap: () =>
                    AutoRouter.of(context).push(const SellerResellingRoute()),
              ),
              BuildDrawerItem(
                title: 'Uploaded Files',
                icon: Icons.upload_file,
                onTap: () => AutoRouter.of(context)
                    .push(const SellerUploadedFileRoute()),
              ),
              BuildDrawerItem(
                title: 'Orders',
                icon: Icons.production_quantity_limits,
                onTap: () =>
                    AutoRouter.of(context).push(const SellerOrdersRoute()),
              ),
              BuildDrawerItem(
                title: 'Shop Setting',
                icon: Icons.settings,
                onTap: () =>
                    AutoRouter.of(context).push(const SellerShopSettingRoute()),
              ),
              BuildDrawerItem(
                title: 'Payment History',
                icon: Icons.history,
                onTap: () =>
                    AutoRouter.of(context).push(const PaymentHistoryRoute()),
              ),
              BuildDrawerItem(
                title: 'Money Withdraw',
                icon: Icons.money,
                onTap: () => AutoRouter.of(context)
                    .push(const SellerMoneyWithDrawRoute()),
              ),
              BuildDrawerItem(
                title: 'Commission History',
                icon: Icons.file_copy_outlined,
                onTap: () => AutoRouter.of(context)
                    .push(const SellerCommissionHistoryRoute()),
              ),
              DefaultButton(
                title: "Logout",
                borderRadius: BorderRadius.circular(5).r,
                width: 120.w,
                height: 30.h,
                fontSize: 12,
                color: context.colors.darkPurple,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10).r,
                onTap: () {},
              ),
            ],
          )),
        ],
      ),
    );
  }
}
