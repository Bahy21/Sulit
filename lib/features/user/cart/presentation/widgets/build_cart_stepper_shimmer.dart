import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';

class BuildCartStepperShimmer extends StatelessWidget {
  const BuildCartStepperShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const stepIcons = [
      CupertinoIcons.cart,
      CupertinoIcons.map,
      CupertinoIcons.bus,
      CupertinoIcons.creditcard,
      CupertinoIcons.check_mark_circled,
    ];

    return Container(
      padding: const EdgeInsets.all(Dimens.dp24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          stepIcons.length,
          (index) {
            return Row(
              children: [
                BuildShimmerItem(
                  child: Container(
                    padding: const EdgeInsets.all(Dimens.dp10),
                    decoration: BoxDecoration(
                      color: context.colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: BuildShimmerItem(
                      child: Icon(
                        stepIcons[index],
                        color: context.colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: index != stepIcons.length - 1,
                  child: BuildShimmerItem(
                    child: Container(
                      height: 2.h,
                      width: 30.w,
                      color: context.colors.grey,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
