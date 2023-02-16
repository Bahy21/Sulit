part of 'profile_imports.dart';

class ProfileController {

  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);

  final GlobalKey<CustomButtonState> createBtnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();
  TextEditingController shopPhoneController = TextEditingController();
  TextEditingController shopEmailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final GenericBloc<File?> imageCubit = GenericBloc(null);

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }
}