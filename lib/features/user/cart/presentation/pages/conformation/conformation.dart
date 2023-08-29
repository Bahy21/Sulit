part of 'conformation_imports.dart';

class Confirmation extends StatefulWidget {
  final OrderSummaryModel summary;

  const Confirmation({Key? key, required this.summary}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: BuildCustomAppBar(
        onBack: () => AutoRouter.of(context).pushAndPopUntil(
          HomeRoute(index: 0),
          predicate: (route) => false,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const BuildCartStepper(current: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(2.5).r,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.done,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Gaps.vGap15,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Thank You for Your Order!',
                style: AppTextStyle.s16_w500(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Gaps.vGap10,
          Padding(
            padding: Dimens.paddingAll15PX,
            child: const Text(
              'Order Summary',
              style: AppTextStyle.s16_w500(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: Dimens.paddingAll8PX,
            margin: Dimens.paddingHorizontal15PX,
            decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius5PX,
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
              children: [
                BuildSummaryItem(
                  title: 'Order date:',
                  value: widget.summary.orderSummary.orderDate,
                ),
                BuildSummaryItem(
                  title: 'Order status:',
                  value: widget.summary.orderSummary.orderStatus,
                ),
                BuildSummaryItem(
                  title: 'Name:',
                  value: widget.summary.orderSummary.name,
                ),
                BuildSummaryItem(
                  title: 'Total order amount:',
                  value: widget.summary.orderSummary.totalOrderAmount,
                ),
                BuildSummaryItem(
                  title: 'Email:',
                  value: widget.summary.orderSummary.email,
                ),
                BuildSummaryItem(
                  title: 'Shipping:',
                  value: widget.summary.orderSummary.shipping,
                ),
                BuildSummaryItem(
                  title: 'Shipping address:',
                  value: widget.summary.orderSummary.shippingAddress,
                ),
                BuildSummaryItem(
                  title: widget.summary.orderSummary.paymentMethod,
                  value: 'Wallet ',
                  showDivider: false,
                ),
              ],
            ),
          ),
          ...List.generate(
            widget.summary.sectionOrders.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Order Code: ",
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Text(
                        widget.summary.sectionOrders[index].code,
                        style: const AppTextStyle.s16_w500(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: Dimens.paddingAll15PX,
                  child: const Text(
                    'Order Details',
                    style: AppTextStyle.s16_w500(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: Dimens.paddingAll8PX,
                  margin: Dimens.paddingHorizontal15PX,
                  decoration: BoxDecoration(
                    borderRadius: Dimens.borderRadius5PX,
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
                    children: [
                      Table(
                        border: TableBorder.all(
                          color: context.colors.blackOpacity,
                          width: 0,
                        ),
                        children: [
                          TableRow(
                            decoration: BoxDecoration(
                              color: context.colors.white,
                              borderRadius: BorderRadius.circular(10).r,
                            ),
                            children: const [
                              BuildProductPaddedText(
                                text: "#",
                              ),
                              BuildProductPaddedText(
                                text: "Product",
                              ),
                              BuildProductPaddedText(
                                text: "Variation",
                              ),
                              BuildProductPaddedText(
                                text: "Quantity",
                              ),
                              BuildProductPaddedText(
                                text: "Delivery Type",
                              ),
                              BuildProductPaddedText(
                                text: "Price",
                              )
                            ],
                          ),
                          ...List.generate(
                            widget.summary.sectionOrders[index].orderDetails
                                .length,
                            (tableIndex) => TableRow(
                              decoration: BoxDecoration(
                                  color: context.colors.white,
                                  borderRadius: BorderRadius.circular(10).r),
                              children: [
                                BuildProductPaddedText(
                                    text: '${tableIndex + 1}'),
                                BuildProductPaddedText(
                                  text: widget.summary.sectionOrders[index]
                                      .orderDetails[tableIndex].product!.name,
                                ),
                                BuildProductPaddedText(
                                  text: widget.summary.sectionOrders[index]
                                      .orderDetails[tableIndex].variation,
                                ),
                                BuildProductPaddedText(
                                  text:
                                      "${widget.summary.sectionOrders[index].orderDetails[tableIndex].quantity}",
                                ),
                                BuildProductPaddedText(
                                  text: widget.summary.sectionOrders[index]
                                      .orderDetails[tableIndex].deliveryType,
                                ),
                                BuildProductPaddedText(
                                  text: widget.summary.sectionOrders[index]
                                      .orderDetails[tableIndex].price,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      BuildSummaryItem(
                        title: 'Subtotal:',
                        value: widget.summary.sectionOrders[index].subtotal,
                      ),
                      BuildSummaryItem(
                        title: 'Shipping:',
                        value: widget.summary.sectionOrders[index].shipping,
                      ),
                      BuildSummaryItem(
                        title: 'Tax:',
                        value: widget.summary.sectionOrders[index].tax,
                      ),
                      BuildSummaryItem(
                        title: 'Coupon Discount:',
                        value:
                            widget.summary.sectionOrders[index].couponDiscount,
                      ),
                      BuildSummaryItem(
                        title: 'Total:',
                        value: widget.summary.sectionOrders[index].total,
                        showDivider: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap15
        ],
      ),
    );
  }
}
