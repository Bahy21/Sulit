part of 'tickets_details_widgets_imports.dart';

class BuildAddReplayButton extends StatelessWidget {
  final TicketsDetailsController controller;
  final int id ;

  const BuildAddReplayButton({Key? key, required this.controller, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0).r,
      child: FloatingActionButton(
        onPressed: () async{
          await controller.showAddReplyDialog(context,id);
          controller.getTicketsDetails(id);
        },
        backgroundColor: context.colors.primary,
        child: Icon(Icons.add, color: context.colors.white,),
      ),
    );
  }
}
