part of 'categories_widgets_imports.dart';

class BuildCategoryItem extends StatelessWidget {
  final CategoriesController categoriesController;

  const BuildCategoryItem({super.key, required this.categoriesController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc, GenericState>(
      bloc: categoriesController.showCategoriesCubit,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
              elevation: 0,
              color: context.colors.greyWhite,
              child: ListTile(
                onTap: () => categoriesController.showCategoriesCubit
                    .onUpdateData(!state.data),
                title: Text(
                  "New Arrivals",
                  style: AppTextStyle.s16_w800(
                      color: state.data
                          ? context.colors.primary
                          : context.colors.black),
                ),
                trailing: Icon(
                  state.data
                      ? CupertinoIcons.chevron_up
                      : CupertinoIcons.chevron_down,
                  color: state.data
                      ? context.colors.primary
                      : context.colors.black,
                  size: 20,
                ),
              ),
            ),
            Visibility(
              visible: state.data,
              child: const BuildSubCategories(),
            ),
          ],
        );
      },
    );
  }
}
