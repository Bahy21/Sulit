part of 'support_tickets_widgets_imports.dart';

class BuildTicketDialog extends StatelessWidget {
  final SupportTicketsController supportTicketsController;

  const BuildTicketDialog({Key? key, required this.supportTicketsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12).r,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Create Ticket",
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
              IconButton(
                  onPressed: () => AutoRouter.of(context).pop(),
                  icon: Icon(
                    Icons.close,
                    color: context.colors.blackOpacity,
                  )),
            ],
          ),
          Form(
            key: supportTicketsController.formKey,
            child: Column(
              children: [
                GenericTextField(
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  controller: supportTicketsController.subjectController,
                  validate: (value) => value?.validateEmpty(),
                  label: "Subject",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10).r,
                ),
                GenericTextField(
                  fieldTypes: FieldTypes.rich,
                  type: TextInputType.text,
                  controller: supportTicketsController.detailsController,
                  action: TextInputAction.done,
                  validate: (value) => value?.validateEmpty(),
                  label: "Description",
                  max: 4,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
                ),
                BuildAddTicketsImages(
                  controller: supportTicketsController,
                ),
                DefaultButton(
                  title: "confirm",
                  width: 120.w,
                  height: 35.h,
                  fontSize: 14,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10).r,
                  onTap: ()=> supportTicketsController.createTicket(context)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
