part of'compare_widgets_imports.dart';
class BuildPaddedText extends StatelessWidget {
  final String? text;
  final String? image;
  final TextAlign align;

  final Color color;

  const BuildPaddedText({
    super.key,
    this.text,
    this.align = TextAlign.center,
    this.color = Colors.black,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ).r,
      child: Visibility(
        visible: image == null,
        replacement: CachedImage(
          height: 40.r,
          width: 40.r,
          url: image ?? "",
        ),
        child: Text(
          text ?? "",
          textAlign: align,
          style: AppTextStyle.s10_w400(
            color: color,
          ),
        ),
      ),
    );
  }
}