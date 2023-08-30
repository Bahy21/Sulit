// ignore_for_file: library_private_types_in_public_api
part of 'add_new_address_imports.dart';

class AddNewAddress extends StatefulWidget {
  final AddAddressFor addAddressFor ;
  const AddNewAddress({Key? key, required this.addAddressFor}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  late AddNewAddressController controller;

  @override
  void initState() {
    controller = AddNewAddressController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const DefaultAppBar(title: "Add New Address"),
        body: Column(
          children: [
            BuildAddAddressForm(
              controller: controller,
            ),
            DefaultButton(
              title: "Save",
              onTap: () => controller.addNewAddress(context, widget.addAddressFor),
              margin: const EdgeInsets.all(20),
            )
          ],
        ),
      ),
    );
  }
}
