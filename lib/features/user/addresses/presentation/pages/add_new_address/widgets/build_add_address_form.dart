part of 'add_new_address_widgets_imports.dart';

class BuildAddAddressForm extends StatelessWidget {
  final AddNewAddressController controller;

  const BuildAddAddressForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Flexible(
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp20),
          children: [
            GenericTextField(
              controller: controller.addressController,
              fieldTypes: FieldTypes.rich,
              type: TextInputType.multiline,
              action: TextInputAction.newline,
              max: 3,
              validate: (value) => value?.validateEmpty(),
              label: "Address",
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            ),
            DropdownTextField<Country>(
              itemAsString: (item) => (item).name,
              fillColor: context.colors.white,
              textSize: 16.sp,
              showClearButton: false,
              title: "Select Country",
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              label: "Select Country",
              dropKey: controller.countryController,
              useName: true,
              onFind: (data) => controller.getCountries(),
              fontSize: 16.sp,
              selectedItem: controller.countryModel,
              radius: const BorderRadius.all(Radius.circular(5)).r,
              onChange: (value) => controller.onChangeCountry(value),
              validate: (value) => validateDropDown(value),
            ),
            DropdownTextField<StateDomainModel>(
              itemAsString: (item) => (item).name,
              fillColor: context.colors.white,
              textSize: 16.sp,
              showClearButton: false,
              title: "Select State",
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              label: "Select State",
              dropKey: controller.stateController,
              useName: true,
              onFind: (data) => controller.getStateByCountryId(context),
              fontSize: 16.sp,
              selectedItem: controller.stateModel,
              radius: const BorderRadius.all(Radius.circular(5)).r,
              onChange: (value) => controller.onChangeState(value),
              validate: (value) => validateDropDown(value),
            ),
            DropdownTextField<City>(
              itemAsString: (item) => (item).name,
              fillColor: context.colors.white,
              textSize: 16.sp,
              showClearButton: false,
              title: "Select City",
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              label: "Select City",
              dropKey: controller.cityController,
              useName: true,
              onFind: (data) => controller.getCitiesByStateId(),
              fontSize: 16.sp,
              selectedItem: controller.cityModel,
              radius: const BorderRadius.all(
               Radius.circular(5)
              ).r,
              onChange: (value) => controller.onChangeCity(value),
              validate: (value) => validateDropDown(value),
            ),
            GenericTextField(
              controller: controller.postalCodeController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              label: "Postal Code",
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            ),
            GenericTextField(
              controller: controller.phoneController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.number,
              action: TextInputAction.next,
              validate: (value) => value?.validatePhone(),
              label: "Phone",
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
            ),
          ],
        ),
      ),
    );
  }
}
