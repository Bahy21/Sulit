import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/theme/text/app_text_style.dart';

class BuildDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  const BuildDrawerItem({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7).r,
            child: Row(
              children: [
                Icon(icon,color: context.colors.blackOpacity,size: 20.sp,),
                Gaps.hGap10,
                Text(
                  title,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
          ),
          Divider(color: context.colors.greyWhite,)
        ],
      ),
    );
  }
}
