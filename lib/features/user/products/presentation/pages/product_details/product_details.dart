part of 'product_details_imports.dart';

class ProductDetails extends StatefulWidget {
  final int productId;
  final bool isResale;

  const ProductDetails(
      {super.key, required this.productId, required this.isResale});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late ProductDetailsController controller;

  @override
  void initState() {
    controller =
        ProductDetailsController(context, widget.productId, widget.isResale);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: context.colors.customBackground,
          body: BlocBuilder<GenericBloc<ProductDetailsDomainModel?>,
              GenericState<ProductDetailsDomainModel?>>(
            bloc: controller.detailsCubit,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return Column(
                  children: [
                    BuildDetailsView(
                      controller: controller,
                      detailsModel: state.data!,
                    ),
                    BuildProductButtons(
                      controller: controller,
                    ),
                  ],
                );
              } else {
                return const BuildLoadingDetails();
              }
            },
          ),
        ),
      ),
    );
  }
}
