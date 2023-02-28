part of 'seller_dashboard_widgets_imports.dart';

class BuildDashboardItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String details;

  const BuildDashboardItem(
      {super.key,
      required this.iconData,
      required this.title,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      height: 100.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.colors.darkPurple,
        borderRadius: Dimens.borderRadius5PX,
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            title,
            style: AppTextStyle.s17_w400(color: context.colors.white),
          ),
        ),
        subtitle: Text(
          details,
          style: AppTextStyle.s20_w600(color: context.colors.white),
        ),
        trailing: Icon(
          iconData,
          color: context.colors.white,
          size: 40.sp,
        ),
      ),
    );
  }
}
