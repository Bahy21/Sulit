part of 'seller_money_withdraw_imports.dart';

class SellerMoneyWithdrawController {
  final GenericBloc<bool> showFilterCubit = GenericBloc(false);
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  DropDownModel? accountModel;
  DropDownModel? timeModel;
  DropDownModel? typeModel;

  void onChangeAccount(DropDownModel? model) {
    if (model != null) {
      accountModel = model;
    }
  }

  void onChangeTime(DropDownModel? model) {
    if (model != null) {
      timeModel = model;
    }
  }

  void onChangeType(DropDownModel? model) {
    if (model != null) {
      typeModel = model;
    }
  }

  void showSendRequestContent(BuildContext context,
      SellerMoneyWithdrawController sellerMoneyWithdrawController) {
    showDialog(
      context: context,
      builder: (_) => BuildSendRequestContent(
        sellerMoneyWithdrawController: sellerMoneyWithdrawController,
      ),
    );
  }
}
