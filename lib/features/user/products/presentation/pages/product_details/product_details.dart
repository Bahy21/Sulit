part of 'product_details_imports.dart';

class ProductDetails extends StatefulWidget {
  final int productId;

  const ProductDetails({super.key, required this.productId});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late ProductDetailsController controller;

  @override
  void initState() {
    controller = ProductDetailsController(context, widget.productId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: context.colors.background,
        bottomNavigationBar: BuildProductButtons(),
        body: BlocBuilder<GenericBloc<ProductDetailsDomainModel?>,
            GenericState<ProductDetailsDomainModel?>>(
          bloc: controller.detailsCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return BuildDetailsView(
                controller: controller,
                detailsModel: state.data!,
              );
            } else {
              return const BuildLoadingDetails();
            }
          },
        ),
      ),
    );
  }
}
