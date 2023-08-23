part of 'support_tickets_widgets_imports.dart';

class BuildTicketsList extends StatelessWidget {
  final SupportTicketsController controller;
  final List<Ticket> tickets;

  const BuildTicketsList(
      {Key? key, required this.controller, required this.tickets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tickets",
          style: AppTextStyle.s16_w500(color: context.colors.black),
        ),
        Gaps.vGap20,
        Visibility(
          visible: tickets.isNotEmpty,
          replacement: Padding(
            padding: EdgeInsets.only(top: 200.h),
            child: Center(
              child: Text(
                "You have no tickets. !",
                style: AppTextStyle.s12_w400(
                  color: context.colors.grey,
                ),
              ),
            ),
          ),
          child: Column(
              children: List.generate(
                tickets.length,
                    (index) =>
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 5,
                          ).r,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(5)
                                .r,
                            color: context.colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: context.colors.greyWhite,
                                blurRadius: 1,
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: ListTile(
                            onTap: () {
                              tickets[index].selected =
                              !tickets[index].selected;
                              controller.ticketsBloc.onUpdateData(tickets);
                            },
                            title: Text(
                              tickets[index].subject,
                              style: AppTextStyle.s14_w500(color: context.colors
                                  .black),
                            ),
                            trailing: Text(
                              tickets[index].status,
                              style:
                              AppTextStyle.s12_w400(color: context.colors
                                  .primary),
                            ),
                            leading: Icon(
                              tickets[index].selected == false
                                  ? Icons.add_box
                                  : Icons.indeterminate_check_box,
                              color: context.colors.primary,
                              size: 20.sp,
                            ),
                            minLeadingWidth: 10.w,
                          ),
                        ),
                        Visibility(
                          visible: tickets[index].selected,
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 5,
                              ).r,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12)
                                  .r,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius
                                      .circular(5)
                                      .r,
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
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Text(
                                        "TicketId",
                                        style: AppTextStyle.s14_w500(
                                          color: context.colors.black,),
                                      ),
                                      Text(
                                        "#${tickets[index].ticketId}",
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
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Text(
                                        "Sending date",
                                        style: AppTextStyle.s14_w500(
                                            color: context.colors.black),
                                      ),
                                      Text(
                                        DateFormat.yMd().add_jm().format(
                                          tickets[index].sendingDate,),
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
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Text(
                                        "Options",
                                        style: AppTextStyle.s14_w500(
                                            color: context.colors.black),
                                      ),
                                      InkWell(
                                        onTap: () =>
                                            AutoRouter.of(context)
                                                .push(TicketsDetailsRoute(id: tickets[index].id)),
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
                    ),
              )),
        )
      ],
    );
  }
}
