part of 'contact_us_widgets_imports.dart';

class BuildContactUsFields extends StatelessWidget {
  final ContactUsController contactUsData;

  const BuildContactUsFields({Key? key, required this.contactUsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactUsData.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: contactUsData.name,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: "Name",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: contactUsData.email,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label:"E-mail",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: contactUsData.phone,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(),
            label: "Phone",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: contactUsData.subject,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            label: "Title",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: contactUsData.message,
            fieldTypes: FieldTypes.rich,
            type: TextInputType.text,
            action: TextInputAction.done,
            max: 4,
            validate: (value) => value?.validateEmpty(),
            label: "Your Message",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
        ],
      ),
    );
  }
}
