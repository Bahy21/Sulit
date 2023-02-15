part of 'payment_widgets_imports.dart';

class BuildSummary extends StatelessWidget {
final PaymentController paymentController;

  const BuildSummary({super.key, required this.paymentController});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp15),
      decoration: BoxDecoration(
        color: context.colors.greyWhite.withOpacity(.1),
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Summary",
                style: AppTextStyle.s16_w800(color: context.colors.black),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: Dimens.borderRadius5PX),
                child: Text(
                  "2 items",
                  style: AppTextStyle.s14_w400(color: context.colors.white),
                ),
              )
            ],
          ),
          Gaps.line(context.colors.primary, 20),
          const BuildSummaryHeader(title: "Products", details: "Total"),
          ...List.generate(
            3,
            (index) =>
                const BuildSummaryItem(title: "Subtotal", details: "200"),
          ),
          const BuildSummaryHeader(title: "Subtotal", details: "${122} د.إ "),
          const BuildSummaryHeader(title: "Tax", details: "${2} د.إ "),
          const BuildSummaryHeader(
              title: "Total Shipping", details: "${22} د.إ "),
          Gaps.line(context.colors.primary, 20),
          const BuildSummaryHeader(
            title: "Total",
            details: "${304} د.إ ",
            // isTotal: true,
          ),
         BuildCoupon(paymentController:paymentController),
        ],
      ),
    );
  }
}
