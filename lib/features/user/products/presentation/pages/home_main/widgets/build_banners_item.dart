part of 'home_main_widgets_imports.dart';

class BuildBannersItem extends StatelessWidget {
  const BuildBannersItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CachedImage(
        url:
            "https://cdn.shopify.com/s/files/1/0583/7737/1842/files/banner3.jpg?v=1629357208",
        height: 80.h,

        imgMargin: Dimens.paddingHorizontal5PX,
      ),
    );
  }
}
