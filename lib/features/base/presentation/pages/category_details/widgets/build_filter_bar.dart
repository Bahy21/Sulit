part of 'category_details_widgets_imports.dart';

class BuildFilterBar extends StatelessWidget {
  final String categoryName;
  final CategoryDetailsController categoryDetailsController;

  const BuildFilterBar(
      {super.key,
      required this.categoryName,
      required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: Dimens.dp20, vertical: Dimens.dp15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName,
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
          InkWell(
            onTap: () =>
                categoryDetailsController.scaffold.currentState?.openDrawer(),
            child: Container(
              padding: const EdgeInsets.all(Dimens.dp5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colors.primary,
              ),
              child: const Icon(Icons.filter_alt_outlined, size: 20),
            ),
          )
        ],
      ),
    );
  }
}
