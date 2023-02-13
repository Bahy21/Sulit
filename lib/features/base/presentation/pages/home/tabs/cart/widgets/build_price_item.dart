part of 'cart_widgets_imports.dart';

class BuildPriceItem extends StatelessWidget {
  final String title;
  final String price;

  const BuildPriceItem({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s15_w500(color: context.colors.black),
        ),
        Gaps.vGap5,
        Text(
          "${price} د.إ",
          style: AppTextStyle.s16_w800(color: context.colors.black),
        )
      ],
    );
  }
}
