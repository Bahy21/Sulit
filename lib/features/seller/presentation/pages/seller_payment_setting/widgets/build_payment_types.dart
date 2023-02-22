part of 'seller_payment_setting_widgets_imports.dart';

class BuildPaymentTypes extends StatelessWidget {
  final SellerPaymentSettingController sellerPaymentSettingController;

  const BuildPaymentTypes(
      {super.key, required this.sellerPaymentSettingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: sellerPaymentSettingController.cashPaymentCubit,
          builder: (_, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cash Payment",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
                Switch(
                  activeColor: context.colors.darkPurple,
                  inactiveThumbColor: context.colors.white,
                  inactiveTrackColor: context.colors.gray,
                  value: state.data,
                  onChanged: (val) => sellerPaymentSettingController
                      .cashPaymentCubit
                      .onUpdateData(!state.data),
                ),
              ],
            );
          },
        ),
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: sellerPaymentSettingController.bankPaymentCubit,
          builder: (_, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bank Payment",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
                Switch(
                  activeColor: context.colors.darkPurple,
                  inactiveThumbColor: context.colors.white,
                  inactiveTrackColor: context.colors.gray,
                  value: state.data,
                  onChanged: (val) => sellerPaymentSettingController
                      .bankPaymentCubit
                      .onUpdateData(!state.data),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
