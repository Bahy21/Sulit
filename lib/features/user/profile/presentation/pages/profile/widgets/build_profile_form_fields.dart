part of 'profile_widgets_imports.dart';

class BuildProfileFormFields extends StatelessWidget {
  final ProfileController controller;

  const BuildProfileFormFields({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ).r,
            controller: controller.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: "Your Name",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ).r,
            controller: controller.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label: "Your E-mail",
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ).r,
            controller: controller.phoneController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(),
            label: "phone",
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ).r,
          ),
          GenericTextField(
            radius: BorderRadius.circular(10).r,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16).r,
            fieldTypes: FieldTypes.clickable,
            label: "Addresses",
            action: TextInputAction.go,
            controller: controller.addressController,
            type: TextInputType.text,
            margin: const EdgeInsets.symmetric(vertical: 10).r,
            onTab: () => AutoRouter.of(context).push(
              const AddressesRoute(),
            ),
            validate: (value) => value!.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
