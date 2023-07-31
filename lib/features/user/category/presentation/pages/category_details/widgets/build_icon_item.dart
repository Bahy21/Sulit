part of 'category_details_widgets_imports.dart';

class BuildIconItem extends StatelessWidget {
  final IconData iconData;
  final Function() onTap;

  const BuildIconItem({super.key, required this.iconData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:Dimens.paddingAll3PX,
        margin: Dimens.paddingAll5PX,
        decoration: BoxDecoration(
          color: context.colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.colors.gray.withOpacity(.5),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: Icon(
          iconData,
          color: context.colors.blackOpacity,
          size: 16.sp,
        ),
      ),
    );
  }
}
