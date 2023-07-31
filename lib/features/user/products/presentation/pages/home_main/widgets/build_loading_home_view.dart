part of 'home_main_widgets_imports.dart';

class BuildLoadingHomeView extends StatelessWidget {
  const BuildLoadingHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Dimens.paddingAll10PX,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildShimmerItem(
              height: 160.spMin, margin: Dimens.paddingVertical5PX),
          Padding(
            padding: Dimens.paddingVertical10PX,
            child: Row(
              children: [
                Expanded(child: BuildShimmerItem(height: 80.h)),
                Gaps.hGap10,
                Expanded(child: BuildShimmerItem(height: 80.h))
              ],
            ),
          ),
          Padding(
            padding: Dimens.paddingHorizontal10PX,
            child: Row(
              children: [
                Expanded(
                  child: BuildShimmerItem(
                    height: 35.h,
                    borderRadius: Dimens.borderRadius20PX,
                  ),
                ),
                Expanded(
                  child: BuildShimmerItem(
                    height: 35.h,
                    borderRadius: Dimens.borderRadius20PX,
                    margin: Dimens.paddingHorizontal5PX,
                  ),
                ),
                Expanded(
                  child: BuildShimmerItem(
                    height: 35.h,
                    borderRadius: Dimens.borderRadius20PX,
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap10,
          BuildShimmerItem(
            height: 25.h,
            width: 150.w,
            margin: Dimens.paddingVertical10PX,
          ),
          Row(
            children: List.generate(
              3,
              (index) => Expanded(
                child: BuildShimmerItem(
                  height: 100.spMin,
                  margin: Dimens.paddingHorizontal5PX,
                ),
              ),
            ),
          ),
          Gaps.vGap10,
          BuildShimmerItem(
            height: 25.h,
            width: 150.w,
            margin: Dimens.paddingVertical10PX,
          ),
          Row(
            children: List.generate(
              3,
              (index) => Expanded(
                child: BuildShimmerItem(
                  height: 100.spMin,
                  margin: Dimens.paddingHorizontal5PX,
                ),
              ),
            ),
          ),
          BuildShimmerItem(
            height: 25.h,
            width: 150.w,
            margin: Dimens.paddingVertical10PX,
          ),
          Row(
            children: List.generate(
              3,
              (index) => Expanded(
                child: BuildShimmerItem(
                  height: 100.spMin,
                  margin: Dimens.paddingHorizontal5PX,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
