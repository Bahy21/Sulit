part of 'brand_details_imports.dart';

class BrandDetails extends StatefulWidget {
  final int brandId;

  const BrandDetails({Key? key, required this.brandId}) : super(key: key);

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  late BrandDetailsController controller;

  @override
  void initState() {
    controller = BrandDetailsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Brand Products", showBack: true),
      backgroundColor: context.colors.customBackground,
      body: GenericListView(
        type: ListViewType.gridApi,
        onRefresh: controller.getBrandProducts,
        params: [context, widget.brandId],
        cubit: controller.productsBloc,
        runSpacing: 15.r,
        spacing: 5.r,
        gridCrossCount: 2,
        gridItemHeight: 200.spMin,
        padding: Dimens.standardPadding,
        itemBuilder: (_, index, item) => BuildProductItem(
          productModel: item,
          onRefresh: () => controller.getBrandProducts(context, widget.brandId),
        ),
        loadingWidget: const BuildBrandDetailsLoadingView(),
        emptyWidget: const BuildEmptyDataView(),
      ),

      // BlocBuilder<GenericBloc<List<Product>>,
      //     GenericState<List<Product>>>(
      //   bloc: controller.productsBloc,
      //   builder: (context, state) {
      //     if(state is GenericUpdateState){
      //       return Visibility(
      //         visible: state.data.isNotEmpty,
      //         replacement: Container(
      //           alignment: Alignment.center,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Image.asset(Res.emptyCart, scale : 3),
      //             ],
      //           ),
      //         ),
      //         child: GridView.builder(
      //           padding: Dimens.standardPadding,
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2,
      //             crossAxisSpacing: 15.r,
      //             mainAxisSpacing: 15.r,
      //           ),
      //           itemCount: state.data.length,
      //           itemBuilder: (context, index) => BuildProductItem(
      //             productModel: state.data[index],
      //             onRefresh: () => controller.getBrandProducts(widget.brandId),
      //           ),
      //         ),
      //       );
      //     }else {
      //      return const BuildBrandDetailsLoadingView();
      //     }
      //   },
      // ),
    );
  }
}
