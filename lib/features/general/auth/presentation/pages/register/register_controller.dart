part of'register_imports.dart';
class RegisterController{
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmpasswordCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);

  final GlobalKey<CustomButtonState> createBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> sellerBtnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
}