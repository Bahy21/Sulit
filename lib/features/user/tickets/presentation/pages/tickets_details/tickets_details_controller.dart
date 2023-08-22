part of'tickets_details_imports.dart';
class TicketsDetailsController{
  final GenericBloc<File?> imageCubit = GenericBloc(null);
  final GenericBloc<Ticket?> ticketCubit = GenericBloc(null);

  TicketsDetailsController(int id){
    getTicketsDetails(id);
  }

  Future<void> getTicketsDetails(int id) async {
    await GetTicketDetails().call(id).then(
          (value) => ticketCubit.onUpdateData(value),
        );
  }

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }
}