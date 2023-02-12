part of'register_imports.dart';
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
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          children:[
            Column(
              children: [
                const  BuildHeaderLogo(),
                const BuildHeaderTitle(title: "Create an account"),
                Gaps.vGap20,
                BuildRegisterFormFields(registerController: registerController),

                BuildTermsAndConditions(registerController: registerController,),
                Gaps.vGap20,

                BuildRegisterButton( registerController: registerController,),
                Gaps.vGap32,

                BuildSellerButton(registerController: registerController,),
                const BuildRegisterSocial(),
                const BuildHaveAccount()
              ],
            ),
          ]
        ),
      ),
    );
  }
}
