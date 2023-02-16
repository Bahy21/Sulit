part of'tickets_details_widgets_imports.dart';
class BuildTicketDetailsDialog extends StatelessWidget {
  final TicketsDetailsController ticketsDetailsController;
  const BuildTicketDetailsDialog({Key? key, required this.ticketsDetailsController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      contentPadding:
      const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => AutoRouter.of(context).pop(),
                  icon: Icon(
                    Icons.close,
                    color: context.colors.blackOpacity,
                  )),
            ],
          ),
          Column(
            children: [
              GenericTextField(
                fieldTypes: FieldTypes.rich,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) {},
                label: "Description",
                max: 4,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 10).r,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
                      bloc: ticketsDetailsController.imageCubit,
                      builder: (context, state) {
                        if (state is GenericUpdateState) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                                border:
                                Border.all(color: context.colors.primary),
                                image: DecorationImage(
                                  image: FileImage(state.data!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }
                        return InkWell(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                Border.all(color: context.colors.greyWhite),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () =>
                                    ticketsDetailsController.getImage(context),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.image_outlined,
                                    size: 50,
                                    color: context.colors.greyWhite,
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
                  ],
                ),
              ),
              DefaultButton(
                  title: "Send Replay",
                  width: 120,
                  height: 35,
                  fontSize: 14,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
