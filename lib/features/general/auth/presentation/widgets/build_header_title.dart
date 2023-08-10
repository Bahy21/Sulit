import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BuildHeaderTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const BuildHeaderTitle({
    Key? key,
    required this.title,
    this.subTitle = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s19_w500(color: context.colors.black),
        ),
        subTitle != ""
            ? Padding(
                padding: Dimens.headerTitlePadding,
                child: Text(
                  subTitle,
                  style:
                      AppTextStyle.s16_w400(color: context.colors.blackOpacity),
                ),
              )
            : Gaps.empty,
      ],
    );
  }
}
