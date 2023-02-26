part of 'support_tickets_imports.dart';

class SupportTickets extends StatefulWidget {
  const SupportTickets({Key? key}) : super(key: key);

  @override
  State<SupportTickets> createState() => _SupportTicketsState();
}

class _SupportTicketsState extends State<SupportTickets> {
  SupportTicketsController supportTicketsController =
      SupportTicketsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Support Tickets", showBack: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        children: [
          BuildAddTicket(supportTicketsController: supportTicketsController),
          Gaps.vGap32,
          BuildTicketsList(supportTicketsController: supportTicketsController)
        ],
      ),
    );
  }
}
