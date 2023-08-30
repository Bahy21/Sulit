part of 'order_summary_imports.dart';

class OrderSummary extends StatefulWidget {
  final bool isTrackOrder;
  const OrderSummary({Key? key,  this.isTrackOrder=false}) : super(key: key);

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  final OrderSummaryController controller = OrderSummaryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Track Order", showBack: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        children: [
          if (widget.isTrackOrder == true)
            BuildOrderSummaryFields(
              controller: controller,
            ),
          if (widget.isTrackOrder == true)
            Gaps.line(
              context.colors.greyWhite,
              30.h,
            ),
          BlocBuilder<GenericBloc<OrderDomianModel?>,
              GenericState<OrderDomianModel?>>(
            bloc: controller.orderBloc,
            builder: (context, state) {
              if(state is GenericUpdateState){
                return Column(
                  children: [
                    Text(
                      "Order Summary",
                      style: AppTextStyle.s18_w500(
                          color: context.colors.black),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20,).r,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8).r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5).r,
                        color: context.colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: context.colors.greyWhite,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        children:  [
                          BuildOrderSummaryItem(
                            title: "Order Code :",
                            subTitle: state.data!.code,
                          ),
                          BuildOrderSummaryItem(
                            title: "Customer :",
                            subTitle: state.data!.customerName,
                          ),
                          BuildOrderSummaryItem(
                            title: "E-mail :",
                            subTitle: state.data!.customerEmail,
                          ),
                          BuildOrderSummaryItem(
                              title: "Shipping address :",
                              subTitle: state.data!.shippingAddress
                          ),
                          BuildOrderSummaryItem(
                            title: "Order Date :",
                            subTitle: state.data!.orderDate,
                          ),
                          BuildOrderSummaryItem(
                            title: "Total Order Amount :",
                            subTitle: state.data!.orderDate,
                          ),
                          BuildOrderSummaryItem(
                              title: "Shipping Method :",
                              subTitle: state.data!.shippingMethod
                          ),
                          BuildOrderSummaryItem(
                            title: "Payment Method :",
                            subTitle: state.data!.paymentMethod,
                          ),
                          BuildOrderSummaryItem(
                            title: "Delivery Status :",
                            subTitle: state.data!.deliveryStatus,
                          ),
                          const BuildOrderSummaryItem(
                            title: "Shipped By :",
                            subTitle: "admin",
                          ),
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
        ],
      ),
    );
  }
}
