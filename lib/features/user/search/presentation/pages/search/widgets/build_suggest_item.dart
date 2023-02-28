part of 'search_widgets_imports.dart';

class BuildSuggestItem extends StatelessWidget {
  const BuildSuggestItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BuildSuggestHeader(title: "Popular Suggestions"),
        ...List.generate(
          3,
          (index) => GestureDetector(
            onTap: ()=>AutoRouter.of(context).push(CategoryDetailsRoute(title: "title")),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp20, vertical: Dimens.dp10),
              child: Text(
                "items",
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
            ),
          ),
        )
      ],
    );
  }
}
