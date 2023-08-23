// ignore_for_file: use_build_context_synchronously

part of'tickets_details_imports.dart';
class TicketsDetailsController{
  final GenericBloc<List<File>> imagesCubit = GenericBloc([]);
  final GenericBloc<Ticket?> ticketCubit = GenericBloc(null);
  final TextEditingController discription = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  TicketsDetailsController(int id) {
    getTicketsDetails(id);
  }

  Future<void> getTicketsDetails(int id) async {
    await GetTicketDetails().call(id).then(
          (value) => ticketCubit.onUpdateData(value),
        );
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

  Future<void> addTicketReply(int id, BuildContext context) async {
    if(imagesCubit.state.data.isEmpty){
      CustomToast.showSimpleToast(msg: 'Please add at least one image');
      return ;
    }
    if(formKey.currentState!.validate()){
      var params = _replyParams(id);
      var data = await SetAddTicketReply().call(params);
      if (data) {
        CustomToast.showSimpleToast(msg: 'Reply has been sent successfully');
        AutoRouter.of(context).pop();
      }else {
        return ;
      }
    }
  }

  Future<void> showAddReplyDialog(BuildContext context, int id)async {
    await showDialog(
      context: context,
      builder: (context) => BuildTicketDetailsDialog(
        controller: this, id: id,
      ),
    );
  }

  AddTicketReplyParams _replyParams(int id) {
    return AddTicketReplyParams(
      id: id,
      reply: discription.text,
      images: imagesCubit.state.data,
    );
  }
}