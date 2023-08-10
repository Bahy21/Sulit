import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:shimmer/shimmer.dart';

class BuildShimmerItem extends StatelessWidget {
  final double? width;
  final double height;
  final BoxShape? boxShape;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  const BuildShimmerItem(
      {Key? key,
      this.width,
      this.boxShape,
      this.margin,
      this.borderRadius,
      required this.height,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colors.grey,
      highlightColor: context.colors.greyWhite,
      child: child ??
          Container(
            margin: margin,
            width: width ?? MediaQuery.of(context).size.width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? Dimens.borderRadius5PX,
              color: context.colors.greyWhite,
              shape: boxShape ?? BoxShape.rectangle,
            ),
          ),
    );
  }
}
