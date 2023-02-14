part of 'shipping_widgets_imports.dart';

class BuildAddressItem extends StatelessWidget {
  final String title;
  final String desc;

  const BuildAddressItem({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5).r,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title : ",
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          Expanded(
            child: Text(
              desc,
              style: AppTextStyle.s14_w800(color: context.colors.black),
            ),
          )
        ],
      ),
    );
  }
}
