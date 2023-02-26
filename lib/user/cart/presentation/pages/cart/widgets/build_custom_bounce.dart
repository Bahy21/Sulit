part of 'cart_widgets_imports.dart';

class BuildCustomBounce extends StatelessWidget {
  final Function() onTap;
  final IconData iconData;
  final bool deleteIcon;

  const BuildCustomBounce(
      {super.key,
      required this.onTap,
      required this.iconData,
      this.deleteIcon = false});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: onTap,
      duration: const Duration(milliseconds: 200),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: Dimens.dp10),
        padding: const EdgeInsets.all(Dimens.dp8),
        decoration: BoxDecoration(
          color:deleteIcon? context.colors.primary:context.colors.greyWhite,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: deleteIcon?context.colors.white:context.colors.black,
          size: 17,
        ),
      ),
    );
  }
}
