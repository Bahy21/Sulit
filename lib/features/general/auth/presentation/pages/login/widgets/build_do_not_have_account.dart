part of 'login_widgets_imports.dart';

class BuildDoNotHaveAccount extends StatelessWidget {
  const BuildDoNotHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical20PX,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
          ),
          Gaps.vGap10,
          InkWell(
            onTap: () => AutoRouter.of(context).push(const RegisterRoute()),
            child: Text(
              "Register Now",
              style: AppTextStyle.s16_w400(color: context.colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
