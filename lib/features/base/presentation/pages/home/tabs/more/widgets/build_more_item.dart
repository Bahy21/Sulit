part of'more_widgets_imports.dart';
class BuildMoreItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  const BuildMoreItem({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7).r,
            child: Row(
              children: [
                Icon(icon,color: context.colors.blackOpacity,size: 20.sp,),
                Gaps.hGap10,
                Text(
                  title,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
          ),
          Divider(color: context.colors.greyWhite,)
        ],
      ),
    );
  }
}
