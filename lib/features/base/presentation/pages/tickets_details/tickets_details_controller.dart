part of'tickets_details_imports.dart';
class TicketsDetailsController{
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }
}