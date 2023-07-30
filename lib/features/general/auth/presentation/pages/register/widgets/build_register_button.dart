part of'build_register_widgets_imports.dart';
class BuildRegisterButton extends StatelessWidget {
  final RegisterController registerController;
  const BuildRegisterButton({Key? key, required this.registerController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Create Account",
      onTap: () {},
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: registerController.createBtnKey,
      margin:Dimens.paddingVertical20PX,
      fontSize: 10,
      height: 40.h,

    );
  }
}
