part of 'reset_password_widgets_imports.dart';

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordController resetPasswordController;

  const ResetPasswordButton({Key? key, required this.resetPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Set Password",
      onTap: () =>resetPasswordController.resetPassword(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: resetPasswordController.btnKey,
      margin: Dimens.paddingVertical30PX,
      height: 40.h,
    );
  }
}
