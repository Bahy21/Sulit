part of 'addresses_imports.dart';

class Addresses extends StatefulWidget {
  const Addresses({
    Key? key,
  }) : super(key: key);

  @override
  State<Addresses> createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  AddressesController controller = AddressesController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "Addresses",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(Dimens.dp10),
              padding: EdgeInsets.all(Dimens.dp15),
              decoration: BoxDecoration(
                borderRadius: Dimens.borderRadius10PX,
                color: context.colors.greyWhite,
                border: Border.all(color: context.colors.greyWhite),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add New Address",
                    style: AppTextStyle.s15_w700(color: context.colors.primary),
                  ),
                  Icon(Icons.add_circle, color: context.colors.primary),
                ],
              ),
            ),
            ...List.generate(5, (index) {
              return BuildNewAddressItem();
            }),
          ],
        ),
      ),
    );
  }
}
