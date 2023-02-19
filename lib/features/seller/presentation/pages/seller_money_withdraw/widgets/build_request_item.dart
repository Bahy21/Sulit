part of 'seller_money_withdraw_widgets_imports.dart';

class BuildRequestItem extends StatelessWidget {
  final SellerMoneyWithdrawController sellerMoneyWithdrawController;

  const BuildRequestItem(
      {super.key, required this.sellerMoneyWithdrawController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc, GenericState>(
      bloc: sellerMoneyWithdrawController.cubit2,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              minLeadingWidth: 70,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () => sellerMoneyWithdrawController.cubit2
                        .onUpdateData(!state.data),
                    child: Icon(
                      state.data
                          ? Icons.indeterminate_check_box
                          : Icons.add_box_rounded,
                      color: state.data
                          ? context.colors.darkPurple.withOpacity(.7)
                          : context.colors.darkPurple,
                    ),
                  ),
                  Gaps.hGap10,
                  Text(
                    "2",
                    style: AppTextStyle.s14_w400(
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
              title: Text(
                "20/2/2022",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
              trailing: Text(
                "200 د.إ",
                style: AppTextStyle.s14_w400(
                  color: context.colors.black,
                ),
              ),
            ),
            Visibility(
              visible: state.data,
              child: const BuildRequestDetails(),
            )
          ],
        );
      },
    );
  }
}
