part of 'seller_orders_widgets_imports.dart';

class BuildOptionItem extends StatelessWidget {
  final IconData iconData;
  final Color customColor;
  final Function() onTap;

  const BuildOptionItem(
      {super.key,
      required this.iconData,
      required this.customColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimens.dp8),
        margin: const EdgeInsets.symmetric(vertical: Dimens.dp2),
        decoration: BoxDecoration(
          color: customColor.withOpacity(.1),
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: customColor,
          size: 15,
        ),
      ),
    );
  }
}
