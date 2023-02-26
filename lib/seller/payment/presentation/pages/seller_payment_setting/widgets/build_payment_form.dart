part of 'seller_payment_setting_widgets_imports.dart';

class BuildPaymentForm extends StatelessWidget {
  final SellerPaymentSettingController sellerPaymentSettingController;

  const BuildPaymentForm(
      {super.key, required this.sellerPaymentSettingController});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(Dimens.dp20),
        margin: const EdgeInsets.all(Dimens.dp20),
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius10PX,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Text(
              "Bank Name",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
            GenericTextField(
              hint: "Bank Name",
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              controller: sellerPaymentSettingController.bankNameController,
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp10, vertical: Dimens.dp15),
              validate: (value) => value!.validateEmpty(),
            ),
            Text(
              "Bank Account Name",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
            GenericTextField(
              hint: "Bank Account Name",
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              controller: sellerPaymentSettingController.accountNameController,
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp10, vertical: Dimens.dp15),
              validate: (value) => value!.validateEmpty(),
            ),
            Text(
              "Bank Account Number",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
            GenericTextField(
              hint: "Bank Account Number",
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              controller: sellerPaymentSettingController.accountNumbController,
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp10, vertical: Dimens.dp15),
              validate: (value) => value!.validateEmpty(),
            ),
            Text(
              "Bank Routing Number",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
            GenericTextField(
              hint: "Bank Routing Number",
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              controller: sellerPaymentSettingController.routingNumbController,
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp10, vertical: Dimens.dp15),
              validate: (value) => value!.validateEmpty(),
            ),
            BuildPaymentTypes(
              sellerPaymentSettingController: sellerPaymentSettingController,
            ),
          ],
        ),
      ),
    );
  }
}
