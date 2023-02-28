part of 'seller_order_details_widgets_imports.dart';

class BuildPaddingText extends StatelessWidget {
  final String title;

  const BuildPaddingText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp5),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyle.s12_w400(
          color: context.colors.black,
        ),
      ),
    );
  }
}
