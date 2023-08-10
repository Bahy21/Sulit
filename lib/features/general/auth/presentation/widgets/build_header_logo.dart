import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/res.dart';

class BuildHeaderLogo extends StatelessWidget {
  const BuildHeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Res.suliitLogo, width: 150.r, height: 150.r),
    );
  }
}
