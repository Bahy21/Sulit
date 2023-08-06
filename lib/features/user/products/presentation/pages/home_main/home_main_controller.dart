part of 'home_main_imports.dart';

class HomeMainController {
  final GenericBloc<HomeDomainModel?> homeCubit = GenericBloc(null);

  void getHome(BuildContext context, {bool refresh = true}) async {
    var result = await GetHome().call(refresh);
    result?.flashSales.add(FlashSale(
        id: 0, title: "Coupons", date: DateTime.now(), banner: ""));
    homeCubit.onUpdateData(result);
  }
}
