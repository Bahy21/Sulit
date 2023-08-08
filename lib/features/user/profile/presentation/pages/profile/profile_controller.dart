// ignore_for_file: use_build_context_synchronously

part of 'profile_imports.dart';

class ProfileController {
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);
  final GlobalKey<CustomButtonState> createBtnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  TextEditingController nameController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();
  TextEditingController shopPhoneController = TextEditingController();
  TextEditingController shopEmailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  ProfileController(BuildContext context, Address? address) {
    getInitialData(context, address);
  }

  void getInitialData(BuildContext context, Address? address) {
    var user = context.read<UserCubit>().state.model;
    if (user != UserDomainModel()) {
      nameController.text = user?.name ?? "";
      emailController.text = user?.email ?? "";
      phoneController.text = user?.phone ?? "";
      addressController.text = address?.address ?? "";
    }
  }

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  Future<void> removeImage() async {
    imageCubit.onUpdateToInitState(null);
  }

  Future<void> setEditProfile(BuildContext context, Address? address) async {
    var params = _profileParams();

    var data = await SetEditProfile().call(params);
    if (data != UserDomainModel()) {
      await _setDefaultAddress(address!.id, context);
      _cashData(data, context);
      CustomToast.showSimpleToast(
        msg: "Profile information updated successfully",
        type: ToastType.success,
      );
    }
  }

  Future<void> _setDefaultAddress(int id, BuildContext context) async {
    var data = await SetDefaultAddress().call(id);
    if (data) {
      CustomToast.showSimpleToast(
        msg: "Address set as default successfully",
        type: ToastType.success,
      );
    }else {

    }
  }

  void _cashData(UserDomainModel data, BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    UserDomainModel model = data;
    await preferences.setString(
      "user",
      json.encode(
        model.toJson(),
      ),
    );
    context.read<UserCubit>().onUpdateUserData(model);
  }

  ProfileParams _profileParams() {
    return ProfileParams(
      name: nameController.text,
      phone: phoneController.text,
      image: imageCubit.state.data,
    );
  }
}