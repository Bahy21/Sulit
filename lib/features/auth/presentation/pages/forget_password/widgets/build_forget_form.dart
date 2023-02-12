part of'forget_password_widgets_imports.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordController forgetPasswordController;
  const BuildForgetForm({Key? key,required this.forgetPasswordController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: forgetPasswordController.formKey,
      child: GenericTextField(
        contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16).r,
        controller: forgetPasswordController.email,
        fieldTypes: FieldTypes.normal,
        type: TextInputType.emailAddress,
        action: TextInputAction.next,
        validate: (value) => value?.validateEmail(),
        label: tr("mail"),
      ),
    );
  }
}
