part of 'compare_widgets_imports.dart';

class BuildCompareTable extends StatelessWidget {
  final CompareController controller;
  final List<ProductsTableData> compareData;

  const BuildCompareTable(
      {super.key, required this.controller, required this.compareData});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: compareData.isNotEmpty,
      replacement: Padding(
        padding: EdgeInsets.only(top: 350.h),
        child: Center(
          child: Text(
            'No compared items found.  ! ',
            style: AppTextStyle.s12_w400(
              color: context.colors.grey,
            ),
          ),
        ),
      ),
      child: Table(
        border: TableBorder.all(color: context.colors.blackOpacity, width: 0),
        children: [
          TableRow(
            decoration: BoxDecoration(color: context.colors.white),
            children: List.generate(
              controller.headers.length,
              (index) => BuildHeaderText(
                text: controller.headers[index],
              ),
            ),
          ),
          ...List.generate(
            compareData.length,
            (index) => TableRow(
              decoration: BoxDecoration(color: context.colors.white),
              children: [
                BuildPaddedText(text: compareData[index].name),
                BuildPaddedText(image: compareData[index].image),
                BuildPaddedText(text: compareData[index].price),
                BuildPaddedText(text: compareData[index].brand),
                BuildPaddedText(text: compareData[index].category),
                const BuildAddCartBtn()
              ],
            ),
          )
        ],
      ),
    );
  }
}
