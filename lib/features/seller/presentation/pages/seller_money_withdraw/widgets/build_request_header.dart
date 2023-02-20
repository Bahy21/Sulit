part of 'seller_money_withdraw_widgets_imports.dart';

class BuildRequestHeader extends StatelessWidget {
  final SellerMoneyWithdrawController sellerMoneyWithdrawController;

  const BuildRequestHeader(
      {super.key, required this.sellerMoneyWithdrawController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: sellerMoneyWithdrawController.showFilterCubit,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Money Withdraw",
                  style: AppTextStyle.s15_w700(
                    color: context.colors.black,
                  ),
                ),
                InkWell(
                  onTap: () => sellerMoneyWithdrawController.showFilterCubit
                      .onUpdateData(!state.data),
                  child: Container(
                    padding: const EdgeInsets.all(Dimens.dp5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colors.green,
                    ),
                    child: const Icon(Icons.filter_alt_outlined, size: 20),
                  ),
                )
              ],
            ),
            Gaps.line(context.colors.gray, 20),
            Visibility(
              visible: state.data,
              child: Row(
                children: [
                  Expanded(
                    child: DropdownTextField<DropDownModel>(
                      title: "All ",
                      hint: "All",
                      enableColor: context.colors.gray,
                      itemAsString: (u) => u.name,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      // radius: BorderRadius.circular(10),
                      validate: (value) => validateDropDown(context),
                      data: const [
                        DropDownModel(id: 1, name: "This Month"),
                        DropDownModel(id: 2, name: "Last Month"),
                        DropDownModel(id: 3, name: "Last 90 days"),
                        DropDownModel(id: 3, name: "Last 6 Month")
                      ],
                      onChange: (model) =>
                          sellerMoneyWithdrawController.onChangeTime(model),
                    ),
                  ),
                  Gaps.hGap10,
                  Expanded(
                    child: DropdownTextField<DropDownModel>(
                      title: "Status",
                      hint: "Status",
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      enableColor: context.colors.gray,
                      itemAsString: (u) => u.name,
                      // radius: BorderRadius.circular(10),
                      validate: (value) => validateDropDown(context),
                      data: const [
                        DropDownModel(id: 1, name: "Paid"),
                        DropDownModel(id: 2, name: "Pending"),
                      ],
                      onChange: (model) =>
                          sellerMoneyWithdrawController.onChangeType(model),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
