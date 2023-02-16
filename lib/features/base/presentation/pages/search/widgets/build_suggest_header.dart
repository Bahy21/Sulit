part of 'search_widgets_imports.dart';

class BuildSuggestHeader extends StatelessWidget {
  final String title;

  const BuildSuggestHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Dimens.dp15),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.greyWhite.withOpacity(.1),
      ),
      child: Text(
        title,
        style: AppTextStyle.s14_w800(color: context.colors.primary),
      ),
    );
  }
}
