import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';

class CustomDecoration extends BoxDecoration {
  @override
  Color? get color => Colors.white;

  @override
  BorderRadiusGeometry? get borderRadius => Dimens.borderRadius5PX;

  @override
  List<BoxShadow>? get boxShadow => [
        BoxShadow(
          color: Colors.grey.withOpacity(.2),
          blurRadius: 1,
          spreadRadius: .5,
        )
      ];
}
