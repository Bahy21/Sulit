part of 'cart_widgets_imports.dart';

class BuildTotalCost extends StatelessWidget {
  const BuildTotalCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical:Dimens.dp5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Subtotal",
            style: AppTextStyle.s17_w800(color: context.colors.black),
          ),
          Text(
            "${150} د.إ",
            style: AppTextStyle.s17_w800(color: context.colors.black),
          )
        ],
      ),
    );
  }
}
