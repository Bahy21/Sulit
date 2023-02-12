part of'login_widgets_imports.dart';
class BuildDoNotHaveAccount extends StatelessWidget {
  const BuildDoNotHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Don't Have an account?",
            style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
          ),
          Gaps.vGap10,
          InkWell(
            onTap: ()=>AutoRouter.of(context).push(const RegisterRoute()),
            child: Text(
              "Register Now",
              style: AppTextStyle.s14_w400(color: context.colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
