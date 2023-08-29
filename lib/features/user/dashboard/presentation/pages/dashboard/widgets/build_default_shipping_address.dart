part of 'dashboard_widgets_imports.dart';

class BuildDefaultShippingAddress extends StatelessWidget {
  final Dashboards dashboardModel;

  const BuildDefaultShippingAddress({super.key, required this.dashboardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      margin: Dimens.paddingVertical5PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius5PX,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: .5,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Default Shipping Address",
            style: AppTextStyle.s16_w500(color: context.colors.black),
          ),
          Gaps.vGap5,
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: context.colors.blackOpacity,
                size: 20.sp,
              ),
              Text(
                dashboardModel.defaultAddress ?? "Not determined yet",
                style:
                    AppTextStyle.s14_w400(color: context.colors.blackOpacity),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
