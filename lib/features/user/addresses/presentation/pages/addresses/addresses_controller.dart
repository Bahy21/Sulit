part of 'addresses_imports.dart';

class AddressesController {
  final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);

  AddressesController() {
    getAddress();
  }

  Future<void> getAddress({bool refresh = true}) async {
    return await GetAddresses().call(refresh).then(
      (value) {
          addressesBloc.onUpdateData(value);
      },
    );
  }

  void onSelectAddress (Address address, bool? val, BuildContext context , int index){
    for (var e in addressesBloc.state.data) {
      e.selected = false;
    }
    address.selected = !val!;
    addressesBloc.onUpdateData(addressesBloc.state.data);
    AutoRouter.of(context).pushAndPopUntil(
      ProfileRoute(
        address: addressesBloc.state.data.where((element) => element.selected == true).first,
      ),
      predicate: (route) => false,
    );
  }
}
