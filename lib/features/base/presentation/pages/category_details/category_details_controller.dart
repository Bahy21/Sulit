part of 'category_details_imports.dart';

class CategoryDetailsController {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final GenericBloc<PriceRangeEntity?> rangeCubit = GenericBloc(null);

  DropDownModel? brandModel;
  DropDownModel? arrangeModel;

  void initData() {
    RangeValues rangeValues = const RangeValues(10, 100);
    rangeCubit.onUpdateData(
        PriceRangeEntity(initial: rangeValues, value: rangeValues));
  }

  void changePriceValue(RangeValues values, BuildContext context) {
    rangeCubit.state.data!.value = values;
    rangeCubit.onUpdateData(rangeCubit.state.data!);
  }

  void onChangeBrand(DropDownModel? model) {
    if (model != null) {
      brandModel = model;
    }
  }

  void onSort(DropDownModel? model) {
    if (model != null) {
      arrangeModel = model;
    }
  }
}
