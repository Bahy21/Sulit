part of'purchased_history_widgets_imports.dart';
class BuildOptionItem extends StatelessWidget {
  final Function() onTap;
  final IconData iconData;

  final Color iconColor;
  final Color itemColor;

  const BuildOptionItem(
      {super.key,
        required this.onTap,
        required this.iconData, required this.iconColor, required this.itemColor,
       });

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: onTap,
      duration: const Duration(milliseconds: 200),
      child: Container(
        margin:  const EdgeInsets.symmetric(horizontal: Dimens.dp10),
        padding: const EdgeInsets.all(Dimens.dp8),
        decoration: BoxDecoration(
          color:itemColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: iconColor,
          size: 17,
        ),
      ),
    );
  }
}