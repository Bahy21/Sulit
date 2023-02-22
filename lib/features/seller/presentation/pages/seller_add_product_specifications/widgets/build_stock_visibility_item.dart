part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildStockVisibilityItem extends StatelessWidget {
  final String title;
  final GenericBloc<bool> boolCubit;

  const BuildStockVisibilityItem(
      {super.key, required this.title, required this.boolCubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: boolCubit,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
            Switch(
              activeColor: context.colors.darkPurple,
              inactiveThumbColor: context.colors.white,
              inactiveTrackColor: context.colors.gray,
              value: state.data,
              onChanged: (val) => boolCubit.onUpdateData(!state.data),
            ),
          ],
        );
      },
    );
  }
}
