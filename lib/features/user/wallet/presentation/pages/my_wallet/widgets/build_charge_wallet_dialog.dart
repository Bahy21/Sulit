part of 'my_wallet_widgets_imports.dart';

class BuildChargeWalletDialog extends StatelessWidget {
  const BuildChargeWalletDialog({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Recharge wallet",
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
          Column(
            children: [
              GenericTextField(
                fieldTypes: FieldTypes.normal,
                type: TextInputType.number,
                action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                label: "Amount",
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 10).r,
              ),
              GenericTextField(
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                label: "Payment Method",
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 10).r,
              ),
              DefaultButton(
                  title: "confirm",
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
