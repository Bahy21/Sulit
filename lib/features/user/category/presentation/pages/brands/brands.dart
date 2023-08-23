part of 'brands_imports.dart';

class Brands extends StatefulWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  late BrandsController controller;

  @override
  void initState() {
    controller = BrandsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "All Brands", showBack: true),
      body: PagedGridView<int, BrandDomainModel>(
        padding: Dimens.standardPadding,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.r,
          mainAxisSpacing: 15.r,
          childAspectRatio: 9 / 8,
        ),
        showNewPageProgressIndicatorAsGridChild: false,
        showNewPageErrorIndicatorAsGridChild: true,
        pagingController: controller.pagingController,
        builderDelegate: PagedChildBuilderDelegate<BrandDomainModel>(
          firstPageProgressIndicatorBuilder: (context) {
            return const BuildBrandShimmer();
          },
          itemBuilder: (context, item, index) {
            return BuildBrandItem(brand: item);
          },
          noItemsFoundIndicatorBuilder: (cxt) {
            return Center(
              child: Text(
                "No Brands Here",
                style: AppTextStyle.s12_w400(
                  color: context.colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
