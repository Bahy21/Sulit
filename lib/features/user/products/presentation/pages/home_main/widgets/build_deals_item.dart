part of 'home_main_widgets_imports.dart';

class BuildDealsItem extends StatelessWidget {
  final String title;
  final Function() onTap;

  const BuildDealsItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: Dimens.paddingAll3PX,
        padding: Dimens.paddingVertical10PX,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius20PX,
          border: Border.all(color: context.colors.greyWhite),
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: .5,
              spreadRadius: .5,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.monetization_on_outlined,
              color: context.colors.primary,
              size: 17.sp,
            ),
            Gaps.hGap5,
            Text(
              title,
              style: AppTextStyle.s14_w600(
                color: context.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
