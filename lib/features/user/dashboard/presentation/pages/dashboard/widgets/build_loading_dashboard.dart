part of 'dashboard_widgets_imports.dart';

class BuildLoadingDashboard extends StatelessWidget {
  const BuildLoadingDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.standardPadding,
      children: [
        Container(
          padding: Dimens.paddingAll15PX,
          margin: Dimens.paddingVertical5PX,
          decoration: CustomDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(height: 13.h, width: 200.w),
              Gaps.vGap5,
              BuildShimmerItem(height: 13.h, width: 300.w),
            ],
          ),
        ),
        Container(
          padding: Dimens.paddingAll15PX,
          margin: Dimens.paddingVertical5PX,
          height: 140.h,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(height: 13.h, width: 100.w),
              Gaps.vGap5,
              BuildShimmerItem(height: 13.h, width: 70.w),
            ],
          ),
        ),
        Container(
          padding: Dimens.paddingAll15PX,
          margin: Dimens.paddingVertical5PX,
          height: 140.h,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(height: 13.h, width: 100.w),
              Gaps.vGap5,
              BuildShimmerItem(height: 13.h, width: 70.w),
            ],
          ),
        ),
        Container(
          padding: Dimens.paddingAll15PX,
          margin: Dimens.paddingVertical5PX,
          height: 140.h,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(height: 13.h, width: 100.w),
              Gaps.vGap5,
              BuildShimmerItem(height: 13.h, width: 70.w),
            ],
          ),
        ),
      ],
    );
  }
}
