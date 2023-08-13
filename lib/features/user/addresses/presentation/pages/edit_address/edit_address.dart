part of 'edit_address_imports.dart';

class EditAddress extends StatefulWidget {
  final Address address;

  const EditAddress({Key? key, required this.address}) : super(key: key);

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  late EditAddressController controller;

  @override
  void initState() {
    controller = EditAddressController(widget.address);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Edit New Address"),
      body: Column(
        children: [
          BuildEditAddressForm(controller: controller, address: widget.address,),
          DefaultButton(
            title: "Update".toUpperCase(),
            onTap: () => controller.editAddress(
              context,
              widget.address
            ),
            margin: const EdgeInsets.all(20),
          )
        ],
      ),
    );
  }
}
