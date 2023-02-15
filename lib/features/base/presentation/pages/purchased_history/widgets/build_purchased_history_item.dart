part of 'purchased_history_widgets_imports.dart';

class BuildPurchasedHistoryItem extends StatelessWidget {
  final PurchasedHistoryController purchasedHistoryController ;
  const BuildPurchasedHistoryItem({Key? key, required this.purchasedHistoryController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: purchasedHistoryController.isSelectedCubit,
  builder: (context, state) {
    return Column(
      children: [
        InkWell(
          onTap: ()=>purchasedHistoryController.isSelectedCubit.onUpdateData(!state.data),
          child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5,
              ).r,
              padding: const EdgeInsets.all(8).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).r,
                  color: context.colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: context.colors.greyWhite,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Code : ",
                        style: AppTextStyle.s12_w400(color: context.colors.black),
                      ),
                      Text(
                        "29375623-1390471",
                        style: AppTextStyle.s12_w500(color: context.colors.primary),
                      ),
                      Spacer(),
                      Icon(!state.data?Icons.add_box:Icons.indeterminate_check_box,size: 15.sp,color: context.colors.primary,)
                    ],
                  ),
                  Gaps.vGap10,
                  Row(
                    children: [
                      Text(
                        "Amount : ",
                        style: AppTextStyle.s12_w400(color: context.colors.black),
                      ),
                      Text(
                        "900 AED",
                        style: AppTextStyle.s12_w500(color: context.colors.primary),
                      ),
                    ],
                  ),
                  Gaps.vGap20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildOptionItem(
                        onTap: () {},
                        iconData: Icons.delete_outline,
                        iconColor: context.colors.primary,
                        itemColor: context.colors.greyWhite,
                      ),
                      BuildOptionItem(
                        onTap: () {},
                        iconData: Icons.remove_red_eye_outlined,
                        iconColor: context.colors.blueAccent,
                        itemColor: context.colors.greyWhite,
                      ),
                      BuildOptionItem(
                        onTap: () {},
                        iconData: Icons.download,
                        iconColor: context.colors.yellow,
                        itemColor: context.colors.greyWhite,
                      )
                    ],
                  )
                ],
              )),
        ),
        Visibility(
          visible: state.data,
          child: Container(

              margin: const EdgeInsets.symmetric(vertical: 5,).r,
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).r,
                  color: context.colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
                  ]),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date",
                      style: AppTextStyle.s14_w500(color: context.colors.black),
                    ),
                    Text(
                      "12/10/2023",
                      style: AppTextStyle.s14_w400(color: context.colors.black),
                    ),
                  ],
                ),
                Divider(color: context.colors.greyWhite,height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Delivery Status",
                      style: AppTextStyle.s14_w500(color: context.colors.black),
                    ),
                    Text(
                      "Pending",
                      style: AppTextStyle.s14_w400(color: context.colors.black),
                    ),
                  ],
                ),
                Divider(color: context.colors.greyWhite,height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Payment Status",
                      style: AppTextStyle.s14_w500(color: context.colors.black),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 6).r,
                      decoration: BoxDecoration(
                          color: context.colors.primary,
                          borderRadius: BorderRadius.circular(5).r
                      ),
                      child: Text(
                        "Un-Paid",
                        style: AppTextStyle.s12_w400(
                          color: context.colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],)
          ),
        ),
      ],
    );
  },
);
  }
}
