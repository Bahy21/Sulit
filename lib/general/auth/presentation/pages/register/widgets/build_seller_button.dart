part of'build_register_widgets_imports.dart';
class BuildSellerButton extends StatelessWidget {
  final RegisterController registerController;

  const BuildSellerButton({Key? key, required this.registerController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Be A Seller",
          style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
        ),
        LoadingButton(
          title: "Apply Now",
          onTap: () =>AutoRouter.of(context).push(const RegisterShopRoute()),
          color: context.colors.primary,
          textColor: context.colors.white,
          btnKey: registerController.sellerBtnKey,
          margin: const EdgeInsets.only(top: 7).r,
          fontSize: 10,
          height: 40.h,
          width: 100.w,

        ),
      ],
    );
  }
}
