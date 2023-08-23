part of'tickets_details_widgets_imports.dart';
class BuildTicketDetailsDialog extends StatelessWidget {
  final TicketsDetailsController controller;
  final int id;

  const BuildTicketDetailsDialog(
      {Key? key, required this.controller, required this.id})
      : super(key: key);

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
                ),
              ),
            ],
          ),
          Form(
            key: controller.formKey,
            child: Column(
              children: [
                GenericTextField(
                  fieldTypes: FieldTypes.rich,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) {},
                  label: "Description",
                  max: 4,
                  controller: controller.discription,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10).r,
                ),
                BuildAddTicketReplyImage(
                  controller: controller,
                ),
                DefaultButton(
                  title: "Send Replay",
                  width: 120,
                  height: 35,
                  fontSize: 14,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  onTap: () => controller.addTicketReply(id, context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
