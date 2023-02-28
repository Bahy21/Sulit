part of 'category_details_widgets_imports.dart';

class BuildSpecificationItem extends StatelessWidget {
  const BuildSpecificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "specification ",
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          Checkbox(
            value: false,
            visualDensity: const VisualDensity(vertical: -2),
            onChanged: (val) {},
            activeColor: Colors.grey.withOpacity(.3),
          )
        ],
      ),
    );
  }
}
