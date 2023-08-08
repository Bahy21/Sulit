part of'profile_widgets_imports.dart';
class BuildProfileButton extends StatelessWidget {
  const BuildProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        title: "Confirm",
        height: 35.h,
        fontSize: 14,
        borderRadius: BorderRadius.circular(10).r,
        margin: const EdgeInsets.only(top: 40).r,
        onTap: () {});
  }
}
