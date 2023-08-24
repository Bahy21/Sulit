part of 'compare_widgets_imports.dart';
class BuildAddCartBtn extends StatelessWidget {
  const BuildAddCartBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 1,
      ).r,
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 3,
      ).r,
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(2).r,
      ),
      child: Text(
        "Add to card",
        style: AppTextStyle.s9_w400(
          color: context.colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
