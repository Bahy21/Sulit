part of'forget_password_imports.dart';

class ForgetPasswordController{
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  TextEditingController email = TextEditingController();

  final GenericBloc<String> phoneCubit = GenericBloc("");

}