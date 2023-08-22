part of 'support_tickets_imports.dart';

class SupportTickets extends StatefulWidget {
  const SupportTickets({Key? key}) : super(key: key);

  @override
  State<SupportTickets> createState() => _SupportTicketsState();
}

class _SupportTicketsState extends State<SupportTickets> {
  late SupportTicketsController controller;

  @override
  void initState() {
    controller = SupportTicketsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Support Tickets", showBack: true),
      body: BlocBuilder<GenericBloc<List<Ticket>>, GenericState<List<Ticket>>>(
        bloc: controller.ticketsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
              children: [
                BuildAddTicket(supportTicketsController: controller),
                Gaps.vGap32,
                BuildTicketsList(
                  controller: controller,
                  tickets: state.data,
                )
              ],
            );
          } else {
            return const BuildSupportTicketsLoading();
          }
        },
      ),
    );
  }
}
