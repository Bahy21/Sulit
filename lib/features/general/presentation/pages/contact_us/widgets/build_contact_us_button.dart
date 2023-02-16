part of 'contact_us_widgets_imports.dart';

class BuildContactUsButton extends StatelessWidget {
  final ContactUsController contactUsData;

  const BuildContactUsButton(
      {Key? key, required this.contactUsData, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        LoadingButton(
        borderRadius: 8,
        title: "Submit",
        onTap: () {},
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: contactUsData.btnKey,
          margin: const EdgeInsets.only(top: 40).r,
          fontSize: 14,
          height: 35.h,

    ),
      ],
    );
  }
}
