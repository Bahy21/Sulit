part of 'dashboard_widgets_imports.dart';

class BuildDashboardItem extends StatelessWidget {
  final List <Color> colors;
  final String title;
  final String subTitle;

  const BuildDashboardItem({Key? key, required this.colors, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding: const EdgeInsets.all(16).r,
      margin: const EdgeInsets.symmetric(vertical: 4).r,
      height: 150.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:colors,begin: AlignmentDirectional.topStart),
        borderRadius: BorderRadius.circular(10).r,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyle.s20_w500(color: context.colors.white),
          ),
          Gaps.vGap10,
          Text(
            subTitle,
            style: AppTextStyle.s14_w400(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
