// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState?.animateForward();
      LoginEntity params = LoginEntity(email: email.text, password: password.text);
      var result = await SetLogin().call(params);
      if (result != null) {

      } else {
        AutoRouter.of(context).push(ActiveAccountRoute());
      }
      btnKey.currentState?.animateReverse();
    }
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
