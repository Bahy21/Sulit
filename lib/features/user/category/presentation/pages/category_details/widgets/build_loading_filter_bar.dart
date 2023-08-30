part of 'category_details_widgets_imports.dart';

class BuildLoadingFilterBar extends StatelessWidget {
  const BuildLoadingFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingHorizontal15PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: BuildShimmerItem(height: 35.h)),
          Gaps.hGap15,
          BuildShimmerItem(
            height: 35.r,
            width: 35.r,
            borderRadius: Dimens.borderRadius40PX,
          ),
        ],
      ),
    );
  }
}
