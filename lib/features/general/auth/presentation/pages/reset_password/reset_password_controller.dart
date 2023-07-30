part of 'reset_password_imports.dart';

class ResetPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController code = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  void initData(String resetEmail) {
    email.text = resetEmail;
  }

  void resetPassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      ResetPasswordEntity param = ResetPasswordEntity(
          code: code.text,
          email: email.text,
          password: password.text,
          confirmPassword: confirmPassword.text);
      var result = await SetResetPassword().call(param);
      if (result != "") {
        CustomToast.showSimpleToast(msg: result, type: ToastType.success);
        AutoRouter.of(context).push(LoginRoute());
      }
    }
    btnKey.currentState!.animateReverse();
  }
}
