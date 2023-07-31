part of 'home_main_widgets_imports.dart';

class BuildBanners extends StatelessWidget {
  const BuildBanners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.dp10,
        right: Dimens.dp10,
        left: Dimens.dp10,
      ),
      child: Row(
        children: List.generate(
          2,
          (index) => const BuildBannersItem(),
        ),
      ),
    );
  }
}
