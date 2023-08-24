part of 'compare_widgets_imports.dart';

class BuildPaddedText extends StatelessWidget {
  final String? text;
  final String? image;

  const BuildPaddedText({super.key, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll5PX,
      child: Visibility(
        visible: image == null,
        replacement: CachedImage(
          height: 40.r,
          width: 40.r,
          url: image ?? "",
        ),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: AppTextStyle.s10_w400(
            color: context.colors.black,
          ),
        ),
      ),
    );
  }
}
