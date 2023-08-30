part of 'downloads_widgets_imports.dart';

class BuildLoadingDownloads extends StatelessWidget {
  const BuildLoadingDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      padding: Dimens.paddingAll15PX,
      type: ListViewType.normal,
      children: List.generate(
        3,
        (index) => Container(
          margin: Dimens.paddingVertical5PX,
          decoration: CustomDecoration(),
          padding: Dimens.paddingAll8PX,
          child: Row(
            children: [
              BuildShimmerItem(height: 15.h, width: 200.w),
              const Spacer(),
              BuildShimmerItem(
                height: 30.r,
                width: 30.r,
                borderRadius: Dimens.borderRadius20PX,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
