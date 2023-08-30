import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppLightColors extends AppColors {
  @override
  Color get primary => const Color(0xFFc91d1d);

  @override
  Color get secondary => const Color(0xff30e3a0);

  @override
  Color get white => Colors.white;

  @override
  Color get background => Colors.white;

  @override
  Color get customBackground => const Color(0xfff9f9f9);

  @override
  Color get grey => Colors.grey;

  @override
  Color get appBarColor => const Color(0xFFF9656B);

  @override
  Color get black => Colors.black;

  @override
  Color get blackOpacity => Colors.black45;

  @override
  Color get greyWhite => Colors.grey.withOpacity(.2);

  @override
  Color get disableGray => const Color(0xFFCBCBCB);

  @override
  Color get gray => Colors.grey;

  @override
  Color get blue => Colors.blue;

  @override
  Color get shadowColor => Colors.black45;

  @override
  Color get blueAccent => Colors.blueAccent;

  @override
  // TODO: implement yellow
  Color get yellow => Colors.amber;

  @override
  // TODO: implement green
  Color get green => Colors.green;

  @override
  // TODO: implement green
  Color get darkPurple => const Color(0xFF2E294E);

  @override
  // TODO: implement darkPurple
  Color get transparent =>  Colors.transparent;
  @override
  // TODO: implement drawerColor
  Color get drawerColor => const Color(0xFFe9e9f0);

  @override
  Color get offWhite => const Color(0xffF2F2F2);

}
