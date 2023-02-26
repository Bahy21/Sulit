part of 'seller_orders_widgets_imports.dart';

class BuildOrderItem extends StatelessWidget {
  final SellerOrdersController sellerOrdersController;

  const BuildOrderItem({super.key, required this.sellerOrdersController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.dp10, vertical: Dimens.dp10),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius5PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
      ),
      child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: sellerOrdersController.showInfoCubit,
        builder: (_, state) {
          return Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => sellerOrdersController.showInfoCubit
                        .onUpdateData(!state.data),
                    icon: Icon(
                      state.data
                          ? Icons.indeterminate_check_box
                          : Icons.add_box,
                      size: 15.sp,
                      color: context.colors.darkPurple.withOpacity(.5),
                    ),
                  ),
                  Gaps.hGap10,
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Order Code : ",
                              style: AppTextStyle.s12_w600(
                                  color: context.colors.black),
                            ),
                            Text(
                              "23456789",
                              style: AppTextStyle.s12_w400(
                                  color: context.colors.black),
                            ),
                          ],
                        ),
                        Gaps.vGap10,
                        Row(
                          children: [
                            Text(
                              "Payment Status : ",
                              style: AppTextStyle.s12_w600(
                                  color: context.colors.black),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Dimens.dp10,
                                  vertical: Dimens.dp5),
                              decoration: BoxDecoration(
                                  color: context.colors.green,
                                  borderRadius: Dimens.borderRadius5PX),
                              child: Text(
                                "Paid",
                                style: AppTextStyle.s12_w400(
                                  color: context.colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      BuildOptionItem(
                        onTap: () => AutoRouter.of(context)
                            .push(const SellerOrderDetailsRoute()),
                        iconData: Icons.remove_red_eye_outlined,
                        customColor: context.colors.blueAccent,
                      ),
                      BuildOptionItem(
                        onTap: () {},
                        iconData: Icons.download,
                        customColor: context.colors.yellow,
                      ),
                    ],
                  )
                ],
              ),
              Visibility(
                visible: state.data,
                child: const BuildOrderInfo(),
              )
            ],
          );
        },
      ),
    );
  }
}
