part of'seller_shop_setting_imports.dart';
class SellerShopSetting extends StatefulWidget {
  const SellerShopSetting({Key? key}) : super(key: key);

  @override
  State<SellerShopSetting> createState() => _SellerShopSettingState();
}

class _SellerShopSettingState extends State<SellerShopSetting> {
  SellerShopSettingController sellerShopSettingController=SellerShopSettingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Shop Settings", showBack: true),

      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: Column(
            children: [
              BuildSellerShopFields(sellerShopSettingController: sellerShopSettingController,),
              const BuildResellCheckBox(value: true,title: "Would ypu like to register as a Reseller",),
              const BuildResellCheckBox(value: false,title: "Do you want to resell your products ?",),
              const BuildShopSettingButton()

            ],
          ),
        ),
      ),
    );
  }
}
