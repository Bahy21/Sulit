part of 'reset_password_imports.dart';

class ResetPassword extends StatefulWidget {
  final String email;

  const ResetPassword({super.key, required this.email});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final ResetPasswordController resetPasswordController =
      ResetPasswordController();

  @override
  void initState() {
    resetPasswordController.initData(widget.email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildAuthAppBar(),
      body: ListView(
        padding: Dimens.paddingHorizontal20PX,
        children: [
          const BuildHeaderLogo(),
          const BuildHeaderTitle(
            title: "Set new password",
            subTitle:
                "Enter your email address , new password and confirm password",
          ),
          ResetPasswordForm(resetPasswordController: resetPasswordController),
          ResetPasswordButton(resetPasswordController: resetPasswordController),
        ],
      ),
    );
  }
}
