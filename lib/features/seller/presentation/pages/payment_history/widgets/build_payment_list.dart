part of 'payment_history_widgets_imports.dart';

class BuildPaymentList extends StatelessWidget {
  final PaymentHistoryController paymentHistoryController;

  const BuildPaymentList({Key? key, required this.paymentHistoryController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          5,
          (index) => Container(
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
                        "12/2/2023",
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
                        "Amount",
                        style:
                            AppTextStyle.s14_w500(color: context.colors.black),
                      ),
                      Text(
                        "200 AED",
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
                        "Payment Method",
                        style:
                            AppTextStyle.s14_w500(color: context.colors.black),
                      ),
                      Text(
                        "Cash",
                        style: AppTextStyle.s14_w400(
                            color: context.colors.primary),
                      ),
                    ],
                  )
                ],
              )),
        )
      ],
    );
  }
}
