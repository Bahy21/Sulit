part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);

  LoginParams _loginParams() {
    return LoginParams(email: email.text, password: password.text);
  }

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState?.animateForward();
      var params = _loginParams();
      var result = await SetLogin().call(params);
      if (result != null) {
        context.read<DeviceCubit>().updateUserAuth(true);
        GlobalState.instance.set("token", result.token);
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setString("user", json.encode(result.toJson()));
        context.read<UserCubit>().onUpdateUserData(result);
        AutoRouter.of(context).push(HomeRoute(index: 0));
      }
      btnKey.currentState?.animateReverse();
    }
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
