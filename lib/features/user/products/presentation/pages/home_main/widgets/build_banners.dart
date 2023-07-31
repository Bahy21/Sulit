part of 'home_main_widgets_imports.dart';

class BuildBanners extends StatelessWidget {
  const BuildBanners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll10PX,
      child: Row(
        children: List.generate(2, (index) => BuildBannersItem(),)
      ),
    );
  }
}
