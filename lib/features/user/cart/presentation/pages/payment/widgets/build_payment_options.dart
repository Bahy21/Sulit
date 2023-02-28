part of 'payment_widgets_imports.dart';

class BuildPaymentOptions extends StatelessWidget {
  final PaymentController paymentController;

  const BuildPaymentOptions({super.key, required this.paymentController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: Dimens.dp15),
          child: Text(
            "Select a payment option ",
            style: AppTextStyle.s16_w800(color: context.colors.black),
          ),
        ),
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: paymentController.paymentCubit,
          builder: (_, state) {
            return Row(
              children: [
                BuildPaymentItem(
                  img: Res.logo,
                  selected: 0,
                  group: state.data,
                  onTap: () => paymentController.paymentCubit.onUpdateData(0),
                ),
                Gaps.hGap10,
                BuildPaymentItem(
                  img: Res.logo,
                  selected: 1,
                  group: state.data,
                  onTap: () => paymentController.paymentCubit.onUpdateData(1),
                ),
              ],
            );
          },
        ),
        const BuildWalletBalance(),
        Gaps.vGap5,
      ],
    );
  }
}
