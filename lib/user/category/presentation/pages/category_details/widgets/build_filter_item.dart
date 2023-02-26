part of 'category_details_widgets_imports.dart';

class BuildFilterItem extends StatelessWidget {
  const BuildFilterItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                child: Text(
                  "Filter By ...",
                  style: AppTextStyle.s16_w800(color: context.colors.black),
                ),
              ),
              Visibility(
                visible: true,
                replacement: Icon(
                  Icons.keyboard_arrow_down,
                  color: context.colors.black,
                ),
                child: Icon(
                  Icons.keyboard_arrow_up,
                  color: context.colors.black,
                ),
              )
            ],
          ),
        ),
        Gaps.line(context.colors.gray, 10),
        Visibility(
          visible: true,
          child: Column(
            children: List.generate(
              4,
              (index) => const BuildSpecificationItem(),
            ),
          ),
        ),
      ],
    );
  }
}
