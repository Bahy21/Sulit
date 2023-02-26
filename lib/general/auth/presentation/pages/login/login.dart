part of 'login_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const BuildAuthAppBar(showBack: false),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: Column(
            children: [
              const BuildHeaderLogo(),
              Gaps.vGap20,
              const BuildHeaderTitle(title: "Login to your account"),
              Gaps.vGap20,
              BuildLoginForm(controller: controller),
              const BuildForgetPasswordView(),
              BuildLoginButton(controller: controller),
              Gaps.vGap10,
              BuildLoginSocialMedia(controller: controller),
              Gaps.vGap20,
              const BuildDoNotHaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
