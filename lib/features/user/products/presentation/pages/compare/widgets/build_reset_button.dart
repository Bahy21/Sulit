part of'compare_widgets_imports.dart';
class BuildResetButton extends StatelessWidget {
  final bool isNotEmpty  ;
  const BuildResetButton({Key? key, required this.isNotEmpty}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isNotEmpty,
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: DefaultButton(
            title: "Reset Compare List",
            width: 120.w,
            height: 25.h,
            fontSize: 10,
            borderRadius: BorderRadius.circular(5).r,
            margin: const EdgeInsets.only(bottom: 20).r,
            onTap: () {}),
      ),
    );
  }
}
