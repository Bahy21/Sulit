part of 'register_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterController registerController = RegisterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildAuthAppBar(),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: ListView(
          padding: Dimens.paddingHorizontal20PX,
          children: [
            const BuildHeaderLogo(),
            const BuildHeaderTitle(title: "Create an account"),
            Gaps.vGap15,
            BuildRegisterFormFields(registerController: registerController),
            Gaps.vGap10,
            BuildTermsAndConditions(registerController: registerController),
            BuildRegisterButton(registerController: registerController),
            BuildSellerButton(registerController: registerController),
            const BuildRegisterSocial(),
            const BuildHaveAccount(),
          ],
        ),
      ),
    );
  }
}
