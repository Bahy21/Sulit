import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'build_drawer_header.dart';
import 'build_drawer_item.dart';
import 'build_logout.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.white,
      width: MediaQuery.of(context).size.width * .8,
      child: Column(
        children: [
          const BuildDrawerHeader(),
          Flexible(
              child: ListView(
                padding: const EdgeInsets.only(right: 16,left: 16,top: 30).r,
            children: [
              BuildDrawerItem(
                title: 'Home',
                icon: Icons.home_outlined,
                onTap: () =>AutoRouter.of(context).push(HomeRoute(index:0)),
              ),
              BuildDrawerItem(
                title: 'Flash Sale',
                icon: Icons.sell_outlined,
                onTap: () =>AutoRouter.of(context).push(const SaleDetailsRoute()),
              ),
              BuildDrawerItem(
                title: 'Deal of the day',
                icon: Icons.coffee_rounded,
                onTap: () =>AutoRouter.of(context).push(const SaleDetailsRoute()),
              ),
              BuildDrawerItem(
                title: 'All Brands',
                icon: Icons.branding_watermark_outlined,
                onTap: () =>AutoRouter.of(context).push(const BrandsRoute()),
              ),
              BuildDrawerItem(
                title: 'All Categories',
                icon: Icons.category_outlined,
                onTap: () =>AutoRouter.of(context).push(HomeRoute(index: 1)),
              ),
              BuildDrawerItem(
                title: 'Contact Us',
                icon: Icons.contact_support_outlined,
                onTap: () =>AutoRouter.of(context).push(const ContactUsRoute()),
              ),
              BuildDrawerItem(
                title: 'Terms and Conditions',
                icon: Icons.list_alt,
                onTap: () =>AutoRouter.of(context).push(const TermsRoute()),
              ),
              BuildDrawerItem(
                title: 'Privacy Policy',
                icon: Icons.privacy_tip_outlined,
                onTap: () =>AutoRouter.of(context).push(const PrivacyRoute()),
              ),
              BuildDrawerItem(
                title: 'Support Policy',
                icon: Icons.support_agent,
                onTap: () =>AutoRouter.of(context).push(const SupportPolicyRoute()),
              ),
              BuildDrawerItem(
                title: 'Return Policy',
                icon: Icons.keyboard_return,
                onTap: () =>AutoRouter.of(context).push(const ReturnPolicyRoute()),
              )
            ],
          )),
          const BuildLogOut()
        ],
      ),
    );
  }
}
