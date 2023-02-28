part of 'payment_widgets_imports.dart';

class BuildPaymentItem extends StatelessWidget {
  final String img;
  final int selected;
  final int group;
  final Function() onTap;

  const BuildPaymentItem(
      {super.key,
      required this.img,
      required this.selected,
      required this.group,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color borderColor =
        selected == group ? context.colors.primary : context.colors.greyWhite;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70.h,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2),
            borderRadius: Dimens.borderRadius5PX,
          ),
          child: Image.asset(img, scale: 3),
        ),
      ),
    );
  }
}
