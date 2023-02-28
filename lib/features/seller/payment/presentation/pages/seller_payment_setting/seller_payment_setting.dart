part of 'seller_payment_setting_imports.dart';

class SellerPaymentSetting extends StatefulWidget {
  const SellerPaymentSetting({Key? key}) : super(key: key);

  @override
  State<SellerPaymentSetting> createState() => _SellerPaymentSettingState();
}

class _SellerPaymentSettingState extends State<SellerPaymentSetting> {
  final SellerPaymentSettingController sellerPaymentSettingController =
      SellerPaymentSettingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const DefaultAppBar(title: "Payment Settings"),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildPaymentForm(
                sellerPaymentSettingController: sellerPaymentSettingController),
            DefaultButton(
              title: "Save",
              onTap: () {},
              color: context.colors.darkPurple,
              margin: const EdgeInsets.all(Dimens.dp20),
            )
          ],
        ),
      ),
    );
  }
}
