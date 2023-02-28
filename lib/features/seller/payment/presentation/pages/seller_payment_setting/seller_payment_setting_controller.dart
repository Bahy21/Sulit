part of 'seller_payment_setting_imports.dart';

class SellerPaymentSettingController {
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController accountNameController = TextEditingController();
  final TextEditingController accountNumbController = TextEditingController();
  final TextEditingController routingNumbController = TextEditingController();

  final GenericBloc<bool> cashPaymentCubit = GenericBloc(false);
  final GenericBloc<bool> bankPaymentCubit = GenericBloc(false);
}
