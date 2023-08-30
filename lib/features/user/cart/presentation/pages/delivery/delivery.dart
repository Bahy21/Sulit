// ignore_for_file: library_private_types_in_public_api

part of 'delivery_imports.dart';

class Delivery extends StatefulWidget {
  const Delivery({
    Key? key,
  }) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  late DeliveryController controller;

  @override
  void initState() {
    controller = DeliveryController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: BuildDeliveryButtons(
        controller: controller,
      ),
      body: BlocBuilder<GenericBloc<List<SellerShipping>>,
          GenericState<List<SellerShipping>>>(
        bloc: controller.sellerShippingBloc,
        builder: (context, state) {
          return ListView(
            children: [
              const BuildCartStepper(current: 3),
              ...List.generate(
                state.data.length,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp10, vertical: Dimens.dp10),
                      child: Text(
                        state.data[index].name,
                        style: AppTextStyle.s15_w700(
                          color: context.colors.black,
                        ),
                      ),
                    ),
                    BuildDeliveryProducts(
                      cartItems: state.data[index].items,
                    ),
                    BuildDeliveryType(
                      deliveryController: controller,
                      shipping: state.data[index],
                    ),
                  ],
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}
