part of'order_summary_widgets_imports.dart';
class BuildOrderSummaryFields extends StatelessWidget {
  final OrderSummaryController controller ;
  const BuildOrderSummaryFields({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericTextField(
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.done,
          validate: (value) => value?.validateEmpty(),
          hint: "Order code:",
          controller: controller.orderCodeController,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
          margin: const EdgeInsets.symmetric(vertical: 10).r,
        ),
        DefaultButton(
          title: "Track Order",
          width: 120.w,
          height: 35.h,
          fontSize: 14,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20).r,
          onTap: () => controller.getTrackOrder(),
        ),
      ],
    );
  }
}
