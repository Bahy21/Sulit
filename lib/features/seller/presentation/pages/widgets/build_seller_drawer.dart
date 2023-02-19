import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../../core/routes/router_imports.gr.dart';
import '../../../../base/presentation/widgets/build_drawer_item.dart';
import 'build_seller_drawer_header.dart';

class BuildSellerDrawer extends StatelessWidget {
  const BuildSellerDrawer({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(right: 16,left: 16,top: 30).r,
                children: [
                  BuildDrawerItem(
                    title: 'DashBoard',
                    icon: Icons.home_outlined,
                    onTap: ()=>AutoRouter.of(context).push(const SellerDashboardRoute()),
                  ),
                  BuildDrawerItem(
                    title: 'Products',
                    icon: Icons.shopping_bag_outlined,
                    onTap: () {},
                  ),
                  BuildDrawerItem(
                    title: 'Reselling',
                    icon: Icons.present_to_all,
                    onTap: () {},
                  ),
                  BuildDrawerItem(
                    title: 'Uploaded Files',
                    icon: Icons.upload_file,
                    onTap: () {},
                  ),
                  BuildDrawerItem(
                    title: 'Orders',
                    icon: Icons.production_quantity_limits,
                    onTap: () {},
                  ),
                  BuildDrawerItem(
                    title: 'Shop Setting',
                    icon: Icons.settings,
                    onTap: () {},
                  ),
                  BuildDrawerItem(
                    title: 'Payment History',
                    icon: Icons.history,
                    onTap: () =>AutoRouter.of(context).push(const PaymentHistoryRoute()),
                  ),
                  BuildDrawerItem(
                    title: 'Money Withdraw',
                    icon: Icons.money,
                    onTap: () {},
                  ),
                  BuildDrawerItem(
                    title: 'Commission History',
                    icon: Icons.file_copy_outlined,
                    onTap: () {},
                  ),

                ],
              )),

        ],
      ),
    );
  }
}
