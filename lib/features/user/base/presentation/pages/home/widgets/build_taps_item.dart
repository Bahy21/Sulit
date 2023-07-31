part of 'home_widgets_imports.dart';

class BuildTabItem extends StatelessWidget {
  final HomeController controller;
  final int index;
  final bool isActive;

  const BuildTabItem(
      {Key? key,
      required this.controller,
      required this.index,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Gaps.vGap8,
        Icon(
          controller.tabs[index],
          color: isActive ? context.colors.primary : context.colors.gray,
        ),
        Gaps.vGap5,
        Text(
          controller.tabsText[index],
          style: AppTextStyle.s10_bold(
            color: isActive ? context.colors.primary : context.colors.gray,
          ),
        )
      ],
    );
  }
}
