part of 'contact_us_widgets_imports.dart';

class BuildContactUsButton extends StatelessWidget {
  final ContactUsController controller;

  const BuildContactUsButton(
      {Key? key, required this.controller, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        LoadingButton(
        borderRadius: 8,
        title: "Submit",
        onTap: () => controller.contactUs(),
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
          margin: const EdgeInsets.only(top: 40).r,
          fontSize: 14,
          height: 35.h,

    ),
      ],
    );
  }
}
