part of 'tickets_details_widgets_imports.dart';

class BuildAddReplayButton extends StatelessWidget {
  final TicketsDetailsController ticketsDetailsController;

  const BuildAddReplayButton({Key? key, required this.ticketsDetailsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0).r,
      child: FloatingActionButton(

        onPressed: () {
          showDialog(context: context,
              builder: (context) =>
                  BuildTicketDetailsDialog(
                    ticketsDetailsController: ticketsDetailsController,));
        },
        backgroundColor: context.colors.primary,
        child: Icon(Icons.add, color: context.colors.white,),
      ),
    );
  }
}
