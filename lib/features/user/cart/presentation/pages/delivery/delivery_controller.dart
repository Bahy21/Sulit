part of 'delivery_imports.dart';

class DeliveryController {
  final GenericBloc<int> deliveryTypeCubit = GenericBloc(0);
  DropDownModel? nearestPointModel;

  void onSelectPoint(DropDownModel? model) {
    if (model != null) {
      nearestPointModel = model;
    }
  }
}
