part of 'category_details_widgets_imports.dart';

class BuildSpecificationItem extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;
  final AttributeValue attributeValueModel;
  final int position;
  final int attributeIndex;

  const BuildSpecificationItem(
      {super.key,
      required this.attributeValueModel,
      required this.categoryDetailsController,
      required this.position,
      required this.attributeIndex});

  @override
  Widget build(BuildContext context) {
    final Color textColor = attributeValueModel.selected
        ? context.colors.primary
        : context.colors.black;
    return Container(
      margin: Dimens.paddingHorizontal10PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            attributeValueModel.value,
            style: AppTextStyle.s14_w400(color: textColor),
          ),
          Checkbox(
            value: attributeValueModel.selected,
            visualDensity: const VisualDensity(vertical: -2),
            onChanged: (val) => categoryDetailsController.onSelectAttributes(
                attributeIndex, position),
            checkColor: context.colors.white,
          )
        ],
      ),
    );
  }
}
