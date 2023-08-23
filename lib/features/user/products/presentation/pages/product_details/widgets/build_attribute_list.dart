part of 'product_details_widgets_imports.dart';

class BuildAttributeList extends StatelessWidget {
  final ProductDetailsController controller;
  final int index;
  final List<ProductOptions> productOptions;

  const BuildAttributeList(
      {super.key,
      required this.controller,
      required this.index,
      required this.productOptions});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: productOptions[index].options.length,
      padding: Dimens.paddingVertical10PX,
      gridDelegate: GridFixedHeightDelegate(
        crossAxisCount: 4,
        mainAxisSpacing: 5.r,
        crossAxisSpacing: 5.r,
        height: 25.h,
      ),
      itemBuilder: (_, position) {
        return BuildAttributeItems(
          controller: controller,
          optionModel: productOptions,
          index: index,
          position: position,
        );
      },
    );
  }
}
