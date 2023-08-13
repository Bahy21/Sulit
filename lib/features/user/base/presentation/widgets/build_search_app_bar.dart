import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';

class BuildSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeController? homeController;
  final bool? isHome ;
  const BuildSearchAppBar({Key? key,  this.homeController, this.isHome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.colors.white,
      toolbarHeight: 80,
      leading: Visibility(
        visible: isHome?? true,
        replacement: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        child: IconButton(
          onPressed: () => homeController?.scaffoldKey.currentState!.openDrawer(),
          icon: Icon(
            Icons.menu,
            color: context.colors.black,
            size: 25,
          ),
        ),
      ),
      title: Image.asset(Res.suliitLogo, height: 30, width: 150),
      // actions: [
      //   IconButton(
      //     onPressed: () => AutoRouter.of(context).push(const SearchRoute()),
      //     icon: Icon(Icons.search, color: context.colors.black, size: 25),
      //   ),
      // ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight+10);
}
