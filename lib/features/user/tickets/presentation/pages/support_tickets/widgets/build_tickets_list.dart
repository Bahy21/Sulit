part of 'support_tickets_widgets_imports.dart';

class BuildTicketsList extends StatelessWidget {
  final SupportTicketsController supportTicketsController;

  const BuildTicketsList({Key? key, required this.supportTicketsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: supportTicketsController.isVisibleCubit,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tickets",
              style: AppTextStyle.s16_w500(color: context.colors.black),
            ),
            Gaps.vGap20,
            ...List.generate(
                1,
                (index) => Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 5,
                            ).r,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5).r,
                                color: context.colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: context.colors.greyWhite,
                                      blurRadius: 1,
                                      spreadRadius: 1)
                                ]),
                            child: ListTile(
                              onTap: () => supportTicketsController
                                  .isVisibleCubit
                                  .onUpdateData(!state.data),
                              title: Text(
                                "test ticket",
                                style: AppTextStyle.s14_w500(
                                    color: context.colors.black),
                              ),
                              trailing: Text(
                                "Pending",
                                style: AppTextStyle.s12_w400(
                                    color: context.colors.primary),
                              ),
                              leading: Icon(
                                state.data == false
                                    ? Icons.add_box
                                    : Icons.indeterminate_check_box,
                                color: context.colors.primary,
                                size: 20.sp,
                              ),
                              minLeadingWidth: 10.w,
                            )),
                        Visibility(
                          visible: state.data,
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 5,
                              ).r,
                              padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12)
                                  .r,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "TicketId",
                                        style: AppTextStyle.s14_w500(
                                            color: context.colors.black),
                                      ),
                                      Text(
                                        "#765392505",
                                        style: AppTextStyle.s14_w400(
                                            color: context.colors.black),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: context.colors.blackOpacity,
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Sending date",
                                        style: AppTextStyle.s14_w500(
                                            color: context.colors.black),
                                      ),
                                      Text(
                                        "12/2/2023 3:00 pm",
                                        style: AppTextStyle.s14_w400(
                                            color: context.colors.black),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: context.colors.blackOpacity,
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Options",
                                        style: AppTextStyle.s14_w500(
                                            color: context.colors.black),
                                      ),
                                      InkWell(
                                        onTap: () => AutoRouter.of(context)
                                            .push(const TicketsDetailsRoute()),
                                        child: Text(
                                          "View Details >",
                                          style: AppTextStyle.s14_w400(
                                              color: context.colors.primary),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ],
                    ))
          ],
        );
      },
    );
  }
}
