part of 'build_register_widgets_imports.dart';

class BuildHaveAccount extends StatelessWidget {
  const BuildHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical20PX,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
            style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
          ),
          Gaps.vGap10,
          InkWell(
            onTap: () => AutoRouter.of(context).push(const LoginRoute()),
            child: Text(
              "Log In",
              style: AppTextStyle.s16_w400(color: context.colors.primary),
            ),
          ),
          Gaps.vGap20,
        ],
      ),
    );
  }
}
