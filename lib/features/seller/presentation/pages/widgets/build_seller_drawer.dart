import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../../core/routes/router_imports.gr.dart';
import '../../../../base/presentation/widgets/build_drawer_item.dart';
import 'build_seller_drawer_header.dart';
import 'build_sub_product_item.dart';

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
            padding: const EdgeInsets.only(right: 16, left: 16, top: 30).r,
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
                onTap: () {},
              ),
              BuildDrawerItem(
                title: 'Uploaded Files',
                icon: Icons.upload_file,
                onTap: ()=>AutoRouter.of(context).push(const SellerUploadedFileRoute()),
              ),
              BuildDrawerItem(
                title: 'Orders',
                icon: Icons.production_quantity_limits,
                onTap: () {},
              ),
              BuildDrawerItem(
                title: 'Shop Setting',
                icon: Icons.settings,
                onTap: () =>AutoRouter.of(context).push(const SellerShopSettingRoute()),
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
                onTap: () =>AutoRouter.of(context).push(const SellerMoneyWithDrawRoute()),
              ),
              BuildDrawerItem(
                title: 'Commission History',
                icon: Icons.file_copy_outlined,
                onTap: () =>AutoRouter.of(context).push(const SellerCommissionHistoryRoute()),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
