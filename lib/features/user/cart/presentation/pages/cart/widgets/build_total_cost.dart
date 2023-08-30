part of 'cart_widgets_imports.dart';

class BuildTotalCost extends StatelessWidget {
  final String price ;
  final String currency ;
  const BuildTotalCost({Key? key, required this.price, required this.currency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical:Dimens.dp5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sub Total",
            style: AppTextStyle.s16_w800(color: context.colors.black),
          ),
          Text(
            "$price $currency",
            style: AppTextStyle.s16_w800(color: context.colors.black),
          )
        ],
      ),
    );
  }
}
