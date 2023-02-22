part of 'seller_order_details_widgets_imports.dart';

class BuildDetailsItem extends StatelessWidget {
  final String title;
  final String desc;
  final bool isColor;

  const BuildDetailsItem(
      {super.key,
      required this.title,
      required this.desc,
      this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title : ",
            style: AppTextStyle.s14_w600(
              color: isColor ? context.colors.primary : context.colors.black,
            ),
          ),
          Text(
            "$desc",
            style: AppTextStyle.s14_w400(
              color: isColor ? context.colors.primary : context.colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
