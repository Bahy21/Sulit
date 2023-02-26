part of'tickets_details_imports.dart';
class TicketsDetails extends StatefulWidget {
  const TicketsDetails({Key? key}) : super(key: key);

  @override
  State<TicketsDetails> createState() => _TicketsDetailsState();
}

class _TicketsDetailsState extends State<TicketsDetails> {
  TicketsDetailsController ticketsDetailsController = TicketsDetailsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BuildAddReplayButton(ticketsDetailsController: ticketsDetailsController,),
        appBar: const DefaultAppBar(title: "Ticket Details", showBack: true),
        body: Column(
          children: [
            const BuildTicketDetailsItem(),
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric( horizontal: 16).r,
                itemBuilder: (context,index)=>const BuildReplayItem(),
                itemCount: 7,
              ),
            ),
          ],
        )
    );
  }
}
