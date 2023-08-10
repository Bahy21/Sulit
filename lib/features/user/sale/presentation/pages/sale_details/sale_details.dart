part of 'sale_details_imports.dart';

class SaleDetails extends StatefulWidget {
final int dealId;

  const SaleDetails({super.key, required this.dealId});
  @override
  State<SaleDetails> createState() => _SaleDetailsState();
}

class _SaleDetailsState extends State<SaleDetails> {
  late SaleDetailsController controller;

  @override
  void initState() {
    controller = SaleDetailsController(widget.dealId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "Flash Sale",
      ),
      body: BlocBuilder<GenericBloc<SaleDetailsDomainModel?>,
          GenericState<SaleDetailsDomainModel?>>(
        bloc: controller.saleDetailsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildTimer(
                  time: state.data!.date,
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ).r,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20.r,
                        mainAxisSpacing: 20.r,
                        childAspectRatio: 8 / 9),
                    itemCount: state.data!.products.length,
                    itemBuilder: (context, index) => BuildProductItem(
                      productModel: state.data!.products[index],
                      onRefresh: () => controller.getSaleDetails(widget.dealId),
                    ),
                  ),
                ),
              ],
            );
          } else {
           return const BuildFlashSaleLoadingView();
          }
        },
      ),
    );
  }
}
