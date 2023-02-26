part of 'seller_orders_widgets_imports.dart';

class BuildInfoItem extends StatelessWidget {
  final String title;
  final String desc;

  const BuildInfoItem({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp7),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            size: 10,
            color: context.colors.darkPurple,
          ),
          Gaps.hGap10,
          Text(
            "$title : ",
            style: AppTextStyle.s12_w600(color: context.colors.black),
          ),
          Text(
            desc,
            style: AppTextStyle.s12_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
