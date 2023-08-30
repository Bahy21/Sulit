part of 'purchased_history_widgets_imports.dart';

class BuildPurchasedHistoryItem extends StatelessWidget {
  final OrderDomianModel order;
  final PurchasedHistoryController controller;

  const BuildPurchasedHistoryItem({
    Key? key,
    required this.order,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => controller.onOpenHistory(order),
          child: Container(
            margin: Dimens.paddingVertical5PX,
            padding: Dimens.paddingAll15PX,
            decoration: CustomDecoration(),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Code : ",
                      style: AppTextStyle.s14_w500(color: context.colors.black),
                    ),
                    Text(
                      order.code,
                      style:
                          AppTextStyle.s13_w500(color: context.colors.primary),
                    ),
                    const Spacer(),
                    Icon(
                      order.selected
                          ? Icons.indeterminate_check_box
                          : Icons.add_box,
                      color: context.colors.primary,
                      size: 20.sp,
                    )
                  ],
                ),
                Gaps.vGap5,
                Row(
                  children: [
                    Text(
                      "Amount : ",
                      style: AppTextStyle.s14_w500(color: context.colors.black),
                    ),
                    Text(
                      order.total,
                      style:
                          AppTextStyle.s13_w500(color: context.colors.primary),
                    ),
                  ],
                ),
                Gaps.vGap15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // BuildOptionItem(
                    //   onTap: () {},
                    //   iconData: Icons.delete_outline,
                    //   iconColor: context.colors.primary,
                    //   itemColor: context.colors.greyWhite,
                    // ),
                    BuildOptionItem(
                      onTap: () =>
                          AutoRouter.of(context).push(OrderSummaryRoute()),
                      iconData: Icons.remove_red_eye_outlined,
                      iconColor: context.colors.blueAccent,
                      itemColor: context.colors.greyWhite,
                    ),
                    BuildOptionItem(
                      onTap: () {},
                      iconData: Icons.download,
                      iconColor: context.colors.yellow,
                      itemColor: context.colors.greyWhite,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Visibility(
          visible: order.selected,
          child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5,
              ).r,
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style:
                            AppTextStyle.s14_w500(color: context.colors.black),
                      ),
                      Text(
                        order.orderDate.split(' ').first,
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                    ],
                  ),
                  Divider(
                    color: context.colors.greyWhite,
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Status",
                        style:
                            AppTextStyle.s14_w500(color: context.colors.black),
                      ),
                      Text(
                        order.orderStatus,
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                    ],
                  ),
                  Divider(
                    color: context.colors.greyWhite,
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Status",
                        style:
                            AppTextStyle.s14_w500(color: context.colors.black),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 6)
                            .r,
                        decoration: BoxDecoration(
                            color: context.colors.primary,
                            borderRadius: BorderRadius.circular(5).r),
                        child: Text(
                          order.paymentStatusText,
                          style: AppTextStyle.s12_w400(
                            color: context.colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      ],
    );
  }
}
