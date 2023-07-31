part of 'home_main_widgets_imports.dart';
class BuildCustomHeaderTitle extends StatelessWidget {
  final String title, btnText;
  final Function()? onTap;

  const BuildCustomHeaderTitle(
      {Key? key, required this.title, this.btnText = "Top 20", this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.s17_w800(
              color: context.colors.black,
            ),
          ),
          // InkWell(
          //   onTap: onTap??(){},
          //   child: Container(
          //   padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 6).r,
          //   decoration: BoxDecoration(
          //       color: context.colors.primary,
          //       borderRadius: BorderRadius.circular(5).r
          //   ),
          //   child: Text(
          //     btnText,
          //     style: AppTextStyle.s12_w400(
          //       color: context.colors.white,
          //     ),
          //   ),
          // ),)
        ],
      ),
    );
  }
}
