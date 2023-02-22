part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildAttributeItem extends StatelessWidget {
  final String title;

  const BuildAttributeItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s14_w400(
            color: context.colors.black,
          ),
        ),
        MultiDropDownField<String>(
          selectedItems: [],
          title: title,
          label: title,
          data: const [
            "test",
            "test2",
            "test3",
          ],
          onConfirm: (data) {},
          onItemClick: (item) {},
          buttonsColor: context.colors.white,
        ),
      ],
    );
  }
}
