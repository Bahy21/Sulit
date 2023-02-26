part of 'seller_commission_history_widgets_imports.dart';

class BuildCommissionDateFilterDialog extends StatelessWidget {
  final SellerCommissionHistoryController sellerCommissionHistoryController;

  const BuildCommissionDateFilterDialog(
      {Key? key, required this.sellerCommissionHistoryController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DefaultButton(
                  title: "Confirm ",
                  width: 100.w,
                  height: 25.h,
                  fontSize: 10,
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(5).r,
                  margin: const EdgeInsets.symmetric(vertical: 10).r,
                  onTap: () {
                    sellerCommissionHistoryController.selectedDate =
                        sellerCommissionHistoryController
                            .controller.selectedDate;
                  }),
              DefaultButton(
                  title: "Cancel ",
                  width: 100.w,
                  height: 25.h,
                  fontSize: 10,
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(5).r,
                  margin: const EdgeInsets.symmetric(vertical: 10).r,
                  onTap: () {
                    sellerCommissionHistoryController.selectedDate =
                        sellerCommissionHistoryController
                            .controller.selectedDate;
                  }),
            ],
          ),
          SfDateRangePicker(
            view: DateRangePickerView.month,
            monthViewSettings:
                DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            selectionMode: DateRangePickerSelectionMode.range,
          ),
        ],
      ),
    );
  }
}
