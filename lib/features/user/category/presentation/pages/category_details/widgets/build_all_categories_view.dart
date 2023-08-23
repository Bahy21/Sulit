part of 'category_details_widgets_imports.dart';

class BuildAllCategoriesView extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildAllCategoriesView(
      {super.key, required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<SubCategory>>,
        GenericState<List<SubCategory>>>(
      bloc: categoryDetailsController.subCategoriesCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Padding(
            padding: Dimens.paddingVertical5PX,
            child: Column(
              children: List.generate(
                state.data.length,
                (position) => BuildSubCategories(
                  categoryDetailsController: categoryDetailsController,
                  parentSubCategory: state.data[position],
                  position: position,
                ),
              ),
            ),
          );
        } else {
          return const BuildLoadingSubCats();
        }
      },
    );
  }
}
