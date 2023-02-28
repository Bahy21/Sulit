part of 'payment_imports.dart';

class PaymentController {
  final TextEditingController coupon = TextEditingController();
  final GenericBloc<int> paymentCubit = GenericBloc(0);
  final GenericBloc<bool> conditionsCubit = GenericBloc(false);

}
