part of 'support_tickets_widgets_imports.dart';

class BuildAddTicketBtn extends StatelessWidget {
  final SupportTicketsController controller;

  const BuildAddTicketBtn({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.colors.blackOpacity,
      elevation: 2,
      onPressed: () => controller.showAddTicketDialog(context, controller),
      child: Icon(
        Icons.add,
        color: context.colors.white,
        size: 30.sp,
      ),
    );
  }
}
