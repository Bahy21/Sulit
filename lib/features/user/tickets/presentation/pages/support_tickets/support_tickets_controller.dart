// ignore_for_file: use_build_context_synchronously

part of'support_tickets_imports.dart';
class SupportTicketsController{
  GenericBloc<bool> isVisibleCubit = GenericBloc(false);
  final GenericBloc<List<File>> imagesCubit = GenericBloc([]);
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();
  final GenericBloc<List<Ticket>> ticketsBloc = GenericBloc([]);

  SupportTicketsController(){
    getTickets(refresh: false);
    getTickets();
  }

  Future<void> getTickets ({bool refresh = true})async {
    return await GetTickets().call(refresh).then((value) => ticketsBloc.onUpdateData(value));

  }

  Future<List<File>> addImages(BuildContext context) async {
    var images = await getIt<Utilities>().getImages(context);
    if (images != []) {
      imagesCubit.state.data.addAll(images);
      imagesCubit.onUpdateData(imagesCubit.state.data);
      return images;
    } else {
      return [];
    }
  }

  Future<void> createTicket(BuildContext context) async {
    if(formKey.currentState!.validate()){
      var params = _createTicketParams();
      var data = await SetCreateTicket().call(params);
      if (data){
        CustomToast.showSimpleToast(msg: "Ticket has been sent successfully");
        AutoRouter.of(context).pop();
      }
    }
  }

  CreateTicketParams _createTicketParams() {
    return CreateTicketParams(
      subject: subjectController.text,
      details: detailsController.text,
      images: imagesCubit.state.data,
    );
  }
}