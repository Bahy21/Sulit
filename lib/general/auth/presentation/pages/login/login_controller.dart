part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  void onSubmit(BuildContext context){
    AutoRouter.of(context).push( HomeRoute(index: 0));
    getIt.get<LoadingHelper>().showLoadingDialog();
  }


}
