part of 'forget_password_imports.dart';

class ForgetPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController email = TextEditingController();

  final GenericBloc<String> phoneCubit = GenericBloc("");
}
