part of 'home_main_widgets_imports.dart';

class BuildTopBrands extends StatelessWidget {
  final List<BrandModel> brandList;

  BuildTopBrands({required this.brandList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildCustomHeaderTitle(
            title: "Top 10 Brands",
            btnText: "View All Brands",
            onTap: () => AutoRouter.of(context).push(const BrandsRoute()),
          ),
          Gaps.vGap10,
          ...List.generate(
            brandList.length,
            (index) => BuildBrandItem(
              brandModel: brandList[index],
            ),
          )
        ],
      ),
    );
  }
}
