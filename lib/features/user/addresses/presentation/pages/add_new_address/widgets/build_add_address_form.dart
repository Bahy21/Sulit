part of 'add_new_address_widgets_imports.dart';

class BuildAddAddressForm extends StatelessWidget {
  final AddNewAddressController addNewAddressController;

  const BuildAddAddressForm({super.key, required this.addNewAddressController});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: addNewAddressController.formKey,
      child: Flexible(
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp20),
          children: [
            GenericTextField(
              controller: addNewAddressController.addressController,
              fieldTypes: FieldTypes.rich,
              type: TextInputType.multiline,
              action: TextInputAction.newline,
              max: 3,
              validate: (value) => value?.validateEmpty(),
              label: "Address",
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            ),
            DropdownTextField<DropDownModel>(
              title: "Country",
              hint: "Country",
              itemAsString: (u) => u.name,
              validate: (value) => validateDropDown(context),
              selectedItem: addNewAddressController.countryModel,
              dropKey: addNewAddressController.countryController,
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
              data: const [
                DropDownModel(id: 1, name: "test"),
                DropDownModel(id: 2, name: "test2"),
                DropDownModel(id: 3, name: "test3")
              ],
              onChange: (model) =>
                  addNewAddressController.onChangeCountry(model),
            ),
            DropdownTextField<DropDownModel>(
              title: "State",
              hint: "State",
              itemAsString: (u) => u.name,
              validate: (value) => validateDropDown(context),
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
              selectedItem: addNewAddressController.stateModel,
              dropKey: addNewAddressController.stateController,
              data: const [
                DropDownModel(id: 1, name: "test"),
                DropDownModel(id: 2, name: "test2"),
                DropDownModel(id: 3, name: "test3")
              ],
              onChange: (model) => addNewAddressController.onChangeState(model),
            ),
            DropdownTextField<DropDownModel>(
              title: "City",
              hint: "City",
              itemAsString: (u) => u.name,
              validate: (value) => validateDropDown(context),
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
              selectedItem: addNewAddressController.cityModel,
              dropKey: addNewAddressController.cityController,
              data: const [
                DropDownModel(id: 1, name: "test"),
                DropDownModel(id: 2, name: "test2"),
                DropDownModel(id: 3, name: "test3")
              ],
              onChange: (model) => addNewAddressController.onChangeCity(model),
            ),
            GenericTextField(
              controller: addNewAddressController.postalCodeController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              label: "Postal Code",
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            ),
            GenericTextField(
              controller: addNewAddressController.phoneController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.number,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              label: "Phone",
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            ),
          ],
        ),
      ),
    );
  }
}
