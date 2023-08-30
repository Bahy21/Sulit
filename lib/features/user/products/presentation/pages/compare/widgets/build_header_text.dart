part of 'compare_widgets_imports.dart';

class BuildHeaderText extends StatelessWidget {
  final String text;

  const BuildHeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll8PX,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTextStyle.s10_w700(
          color: context.colors.black,
        ),
      ),
    );
  }
}
