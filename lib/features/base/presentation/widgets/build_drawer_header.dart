import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/theme/text/app_text_style.dart';
import '../../../../core/widgets/CachedImage.dart';
import '../../../../res.dart';

class BuildDrawerHeader extends StatelessWidget {
  const BuildDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap20,
        Center(
          child: Image.asset(
            Res.suliitLogo,
            width: 160.w,
            height: 80.h,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 15,top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.gray,
                ),
                child: CachedImage(
                  fit: BoxFit.cover,
                  haveRadius: false,
                  boxShape: BoxShape.circle,
                  placeHolder: Image.asset(
                    Res.profile,
                    height: 60.r,
                    width: 60.r,
                  ),
                  url: "",
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tarek Fouda",
                        style: AppTextStyle.s16_w500(
                          color: context.colors.black,
                        ),
                      ),
                      Gaps.vGap10,
                      Text(
                        "+83456299232353",
                        style: AppTextStyle.s14_w400(
                          color: context.colors.blackOpacity,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
