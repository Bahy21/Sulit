part of 'category_details_widgets_imports.dart';

class BuildSortBar extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildSortBar({super.key, required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
      child: Row(
        children: [
          Expanded(
            child: DropdownTextField<DropDownModel>(
              title: "All Brand",
              hint: "All Brand",
              fillColor: context.colors.white,
              itemAsString: (u) => u.name,
              margin: EdgeInsets.zero,
              validate: (value) => validateDropDown(context),
              data: const [
                DropDownModel(id: 1, name: "test"),
                DropDownModel(id: 2, name: "test2"),
                DropDownModel(id: 3, name: "test3")
              ],
              onChange: (model) =>
                  categoryDetailsController.onChangeBrand(model),
            ),
          ),
          Gaps.hGap10,
          Expanded(
            child: DropdownTextField<DropDownModel>(
              title: "Sort By",
              hint: "Sort By",
              fillColor: context.colors.white,
              itemAsString: (u) => u.name,
              margin: EdgeInsets.zero,
              validate: (value) => validateDropDown(context),
              data: const [
                DropDownModel(id: 1, name: "test"),
                DropDownModel(id: 2, name: "test2"),
                DropDownModel(id: 3, name: "test3")
              ],
              onChange: (model) =>
                  categoryDetailsController.onChangeBrand(model),
            ),
          ),
        ],
      ),
    );
  }
}
