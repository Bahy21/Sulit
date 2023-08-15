part of 'category_details_widgets_imports.dart';

class BuildIconItem extends StatelessWidget {
  final IconData iconData;
  final EdgeInsets? padding;
  final Function() onTap;
  final bool? isWishList ;
  final Color? containerColor ;

  const BuildIconItem({super.key, required this.iconData,this.padding, required this.onTap,  this.isWishList, this.containerColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:padding??Dimens.paddingAll3PX,
        margin: Dimens.paddingAll5PX,
        decoration: BoxDecoration(
          color: containerColor ?? context.colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.colors.gray.withOpacity(.5),
              blurRadius: .5,
              spreadRadius: .5,
            )
          ],
        ),
        child: Icon(
          iconData,
          color: isWishList??false ? context.colors.primary : context.colors.blackOpacity,
          size: 16.sp,
        ),
      ),
    );
  }
}
