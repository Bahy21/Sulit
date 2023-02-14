part of 'categories_widgets_imports.dart';

class BuildSubCategories extends StatelessWidget {
  const BuildSubCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing: Dimens.dp20,
        runSpacing: Dimens.dp20,
        children: List.generate(
          7,
          (index) => InkWell(
            onTap: () => AutoRouter.of(context)
                .push(CategoryDetailsRoute(title: "Top Sellers")),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: Text(
                "Top Sellers",
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
