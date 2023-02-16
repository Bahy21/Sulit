part of'support_tickets_widgets_imports.dart';
class BuildAddTicket extends StatelessWidget {
  final SupportTicketsController supportTicketsController;

  const BuildAddTicket({Key? key, required this.supportTicketsController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
showDialog(context: context, builder: (context)=>BuildTicketDialog(supportTicketsController: supportTicketsController,));
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12).r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.blackOpacity,

            ),
            child: Icon(Icons.add,color: context.colors.white,size: 35.sp,),
          ),
          Gaps.vGap20,

          Text(
            "Create a Ticket",
            style: AppTextStyle.s16_w400(color: context.colors.primary),
          ),
          Divider(color: context.colors.greyWhite,height: 20.h,)
        ],
      ),
    );
  }
}
