part of 'delivery_widgets_imports.dart';

class BuildDeliveryItem extends StatelessWidget {
  final String title;
  final int value;
  final int groupValue;
  final Function(int?) onChanged;

  const BuildDeliveryItem(
      {super.key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    Color borderColor =
        value == groupValue ? context.colors.primary : context.colors.greyWhite;
    return Expanded(
      child: InkWell(
        onTap: () => onChanged(value),
        child: Container(
          padding: const EdgeInsets.all(Dimens.dp5),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2),
            borderRadius: Dimens.borderRadius5PX,
          ),
          child: Row(
            children: [
              Radio<int>(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: context.colors.primary,
              ),
              Flexible(
                child: Text(
                  title,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
