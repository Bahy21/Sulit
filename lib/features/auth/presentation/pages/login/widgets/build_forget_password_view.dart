part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>AutoRouter.of(context).push(const ForgetPasswordRoute()),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          "Forget password?",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
      ),
    );
  }
}
