import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppDarkColors extends AppColors {

  @override
  Color get primary => const Color(0xFFc91d1d);

  @override
  Color get secondary => const Color(0xff30e3a0);

  @override
  Color get white => Colors.black;

  @override
  Color get appBarColor => const Color(0xFFF9656B);

  @override
  Color get black => Colors.white;

  @override
  Color get background => Colors.black;

  @override
  Color get blackOpacity => Colors.white70;

  @override
  Color get greyWhite => Colors.grey.withOpacity(.2);

  @override
  Color get disableGray=> Colors.black38;
  @override

  Color get blue => Colors.blue;
  @override

  Color get blueAccent => Colors.blueAccent;
  @override

  Color get shadowColor => Colors.black45;
  @override
  // TODO: implement gray
  Color get gray => Colors.white70;

  @override
  // TODO: implement yellow
  Color get yellow => Colors.amber;

  @override
  // TODO: implement green
  Color get green => Colors.green;

}