// ignore_for_file: library_private_types_in_public_api
part of 'shipping_imports.dart';

class Shipping extends StatefulWidget {
  final List<CartItem> cartItems ;
  const Shipping({Key? key, required this.cartItems}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  final ShippingController controller = ShippingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar:  BuildShippingButtons(cartItems: widget.cartItems, controller: controller,),
      body: Column(
        children: [
          const BuildCartStepper(current: 2),
          BlocBuilder<GenericBloc<List<Address>>, GenericState<List<Address>>>(
            bloc: controller.addressesBloc,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return Column(
                  children: [
                    const BuildAddNewAddress(),
                    Visibility(
                      visible: state.data.isNotEmpty,
                      replacement: const BuildAddressesEmptyView(),
                      child: BuildShippingAddressView(
                        controller: controller,
                      ),
                    )
                  ],
                );
              } else {
                return const BuildAddressLoading();
              }
            },
          ),
        ],
      ),
    );
  }
}
