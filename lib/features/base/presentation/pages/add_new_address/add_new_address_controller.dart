part of 'add_new_address_imports.dart';

class AddNewAddressController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<DropdownSearchState> countryController = GlobalKey();
  final GlobalKey<DropdownSearchState> stateController = GlobalKey();
  final GlobalKey<DropdownSearchState> cityController = GlobalKey();
  final LocationCubit locationCubit = LocationCubit();

  DropDownModel? countryModel;
  DropDownModel? stateModel;
  DropDownModel? cityModel;

  void onChangeCountry(DropDownModel? model) {
    if (model != null) {
      countryModel = model;
    }
    stateController.currentState?.changeSelectedItem(null);
    cityController.currentState?.changeSelectedItem(null);
  }

  void onChangeState(DropDownModel? model) {
    if (model != null) {
      stateModel = model;
    }
    cityController.currentState?.changeSelectedItem(null);
  }

  void onChangeCity(DropDownModel? model) {
    if (model != null) {
      cityModel = model;
    }
  }
}
