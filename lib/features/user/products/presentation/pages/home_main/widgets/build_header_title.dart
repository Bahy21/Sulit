part of 'home_main_widgets_imports.dart';

class BuildHeaderTitle extends StatelessWidget {
  final String title;

  const BuildHeaderTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal15PX,
      child: Text(
        title,
        style: AppTextStyle.s15_w700(
          color: context.colors.black,
        ),
      ),
    );
  }
}
