import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

class BuildSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildSearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.colors.white,
      leading: Icon(CupertinoIcons.list_bullet, color: context.colors.black),
      title: Image.asset(Res.suliitLogo, scale: 10),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.search, color: context.colors.black),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
