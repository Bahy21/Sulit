part of'support_tickets_imports.dart';
class SupportTicketsController{
  GenericBloc<bool> isVisibleCubit = GenericBloc(false);
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }
}