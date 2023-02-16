part of 'seller_dashboard_widgets_imports.dart';

class BuildSettingItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function() onTap;

  const BuildSettingItem(
      {super.key,
      required this.title,
      required this.iconData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      height: 70.h,
      width: MediaQuery.of(context).size.width/2.5,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.colors.darkPurple.withOpacity(.1),
        borderRadius: Dimens.borderRadius5PX,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyle.s17_w800(color: context.colors.darkPurple),
          ),
          Gaps.vGap10,
          Icon(
            iconData,
            color: context.colors.darkPurple,
            size: 40.sp,
          ),
        ],
      ),
    );
  }
}
