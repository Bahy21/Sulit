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
      appBar: const DefaultAppBar(title: "All Brands", showBack: true),
      body: PagedGridView<int, BrandDomainModel>(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.r,
          mainAxisSpacing: 20.r,
          childAspectRatio: 9 / 8,
        ),
        showNewPageProgressIndicatorAsGridChild: false,
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
