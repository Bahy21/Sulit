part of 'addresses_widgets_imports.dart';

class BuildAddressesView extends StatelessWidget {
  final AddressesController controller ;
  const BuildAddressesView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        controller.addressesBloc.state.data.length, (index) {
          return BuildNewAddressItem(
            address: controller.addressesBloc.state.data[index],
            controller: controller,
          );
        },
      ),
    );
  }
}
