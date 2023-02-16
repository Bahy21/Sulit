part of 'add_new_address_imports.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  final AddNewAddressController addNewAddressController =
      AddNewAddressController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const DefaultAppBar(title: "Add New Address"),
        body: Column(
          children: [
            BuildAddAddressForm(addNewAddressController: addNewAddressController),
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
