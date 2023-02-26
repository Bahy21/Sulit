part of 'order_summary_imports.dart';

class OrderSummary extends StatefulWidget {
  final bool isTrackOrder;
  const OrderSummary({Key? key,  this.isTrackOrder=false}) : super(key: key);

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Track Order", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            if(widget.isTrackOrder==true)const BuildOrderSummaryFields(),
            if(widget.isTrackOrder==true)Gaps.line(context.colors.greyWhite, 30.h),
            Text(
              "Order Summary ",
              style: AppTextStyle.s18_w500(color: context.colors.black),
            ),
            Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ).r,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8).r,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5).r,
                    color: context.colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: context.colors.greyWhite,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: const [
                    BuildOrderSummaryItem(
                      title: "Order Code :",
                      subTitle: "89237525-8752",
                    ),
                    BuildOrderSummaryItem(
                      title: "Customer :",
                      subTitle: "Tarek Fouda",
                    ),
                    BuildOrderSummaryItem(
                      title: "E-mail :",
                      subTitle: "tarekfouda2020@gmal.com",
                    ),
                    BuildOrderSummaryItem(
                      title: "Shipping address :",
                      subTitle:
                          "address address addressaddress address address address",
                    ),
                    BuildOrderSummaryItem(
                      title: "Order Date :",
                      subTitle: "12/10/2023",
                    ),
                    BuildOrderSummaryItem(
                      title: "Total Order Amount :",
                      subTitle: "120 AED",
                    ),
                    BuildOrderSummaryItem(
                      title: "Shipping Method :",
                      subTitle: "Flat Shippung rate",
                    ),
                    BuildOrderSummaryItem(
                      title: "Payment Method :",
                      subTitle: "Stripe",
                    ),
                    BuildOrderSummaryItem(
                      title: "Delivery Status :",
                      subTitle: "Deliverd",
                    ),
                    BuildOrderSummaryItem(
                      title: "Product Name :",
                      subTitle: "Oleay",
                    ),
                    BuildOrderSummaryItem(
                      title: "Quantity :",
                      subTitle: "3",
                    ),
                    BuildOrderSummaryItem(
                      title: "Shipped By :",
                      subTitle: "admin",
                    ),
                  ],
                )),
          ],
        ));
  }
}
