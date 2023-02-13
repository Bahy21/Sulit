part of'home_main_widgets_imports.dart';
class BuildHeaderTitle extends StatelessWidget {
  final String title;
  const BuildHeaderTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12,left: 12).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.s16_w800(
              color: context.colors.black,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 6).r,
            decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(5).r
            ),
            child: Text(
              "Top 20",
              style: AppTextStyle.s12_w400(
                color: context.colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
