// ignore_for_file: library_private_types_in_public_api

part of 'add_new_address_imports.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  final AddNewAddressController controller = AddNewAddressController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const DefaultAppBar(title: "Add New Address"),
        body: Column(
          children: [
            BuildAddAddressForm(
                addNewAddressController: controller),
            DefaultButton(
              title: "Save",
              onTap: () {},
              margin: const EdgeInsets.all(20),
            )
          ],
        ),
      ),
    );
  }
}
