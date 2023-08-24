part of 'support_tickets_widgets_imports.dart';

class BuildTicketItem extends StatelessWidget {
  final Ticket ticketModel;
  final SupportTicketsController controller;

  const BuildTicketItem(
      {super.key, required this.ticketModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: Dimens.paddingVertical5PX,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius5PX,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: .5,
              )
            ],
          ),
          child: ListTile(
            onTap: () => controller.onOpenTicket(ticketModel),
            title: Text(
              ticketModel.subject,
              style: AppTextStyle.s14_w500(color: context.colors.black),
            ),
            trailing: Text(
              ticketModel.status,
              style: AppTextStyle.s12_w400(color: context.colors.primary),
            ),
            leading: Icon(
              ticketModel.selected == false
                  ? Icons.add_box
                  : Icons.indeterminate_check_box,
              color: context.colors.primary,
              size: 20.sp,
            ),
            minLeadingWidth: 10.w,
          ),
        ),
        BuildTicketInfo(ticketModel: ticketModel),
      ],
    );
  }
}
