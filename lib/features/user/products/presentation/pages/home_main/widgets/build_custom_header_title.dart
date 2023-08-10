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
      padding: Dimens.paddingHorizontal15PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
          InkWell(
            onTap: onTap ?? () {},
            child: Container(
              padding: Dimens.paddingAll8PX,
              decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: Dimens.borderRadius5PX),
              child: Text(
                btnText,
                style: AppTextStyle.s12_w400(
                  color: context.colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
