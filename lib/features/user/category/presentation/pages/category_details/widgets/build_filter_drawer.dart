part of 'category_details_widgets_imports.dart';

class BuildFilterDrawer extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildFilterDrawer({super.key, required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: context.colors.white,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap32,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Filter",
                  style: AppTextStyle.s17_w800(color: context.colors.black),
                ),
                IconButton(
                  onPressed: () => AutoRouter.of(context).pop(),
                  icon: Icon(
                    CupertinoIcons.clear,
                    color: context.colors.black,
                  ),
                )
              ],
            ),
            Gaps.line(context.colors.gray, 10),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  BuildPriceRange(
                      categoryDetailsController: categoryDetailsController),
                  ...List.generate(
                    4,
                    (index) => const BuildFilterItem(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
