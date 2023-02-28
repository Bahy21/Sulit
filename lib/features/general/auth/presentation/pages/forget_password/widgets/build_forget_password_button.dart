part of 'forget_password_widgets_imports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordController forgetPasswordController;

  const BuildForgetPasswordButton(
      {Key? key, required this.forgetPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Send Password Reset Link",
      onTap: () {},
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: forgetPasswordController.btnKey,
      margin: const EdgeInsets.only(top: 20).r,
      fontSize: 10,
      height: 40.h,
    );
  }
}
