part of 'payment_widgets_imports.dart';

class BuildConditions extends StatelessWidget {
  final PaymentController paymentController;

  const BuildConditions({super.key, required this.paymentController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      child: Row(
        children: [
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: paymentController.conditionsCubit,
            builder: (_, state) {
              return Checkbox(
                value: state.data,
                activeColor: Colors.grey.withOpacity(.3),
                visualDensity: const VisualDensity(horizontal: -2),
                onChanged: (val) =>
                    paymentController.conditionsCubit.onUpdateData(!state.data),
              );
            },
          ),
          Expanded(
            child: Wrap(
              children: [
                Text(
                  "I agree to the ",
                  style: AppTextStyle.s17_w400(color: context.colors.black),
                ),
                Text(
                  "terms and conditions ,",
                  style: AppTextStyle.s17_w400(color: context.colors.primary),
                ),
                Text(
                  "return policy & ",
                  style: AppTextStyle.s17_w400(color: context.colors.primary),
                ),
                Text(
                  "privacy policy",
                  style: AppTextStyle.s17_w400(color: context.colors.primary),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
