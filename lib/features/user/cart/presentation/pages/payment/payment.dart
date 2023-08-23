// ignore_for_file: library_private_types_in_public_api

part of 'payment_imports.dart';

class Payment extends StatefulWidget {
  final Shipping shipping;

  const Payment({Key? key, required this.shipping}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  late PaymentController controller;

  @override
  void initState() {
    controller = PaymentController(widget.shipping);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar:  BuildPaymentButtons(controller: controller,),
      body: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
        bloc: controller.shippingBloc,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return Column(
              children: [
                const BuildCartStepper(current: 4),
                Flexible(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
                    children: [
                      BuildSummary(
                        controller: controller,
                        shipping: state.data!,
                      ),
                      BuildPaymentOptions(
                        controller: controller,
                        paymentOptions: state.data!.paymentOption!,
                      ),
                      BuildAdditionalInfo(controller: controller),
                      BuildConditions(controller: controller),
                    ],
                  ),
                ),
              ],
            );
          }else {
            return Container();
          }
        },
      ),
    );
  }
}
