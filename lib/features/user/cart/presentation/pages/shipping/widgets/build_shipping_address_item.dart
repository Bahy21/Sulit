part of 'shipping_widgets_imports.dart';

class BuildShippingAddressItem extends StatelessWidget {
  final ShippingController controller ;
  final Address address ;
  const BuildShippingAddressItem({Key? key, required this.controller, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = controller.addressesBloc.state.data.indexOf(address);
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Dimens.dp20,
        vertical: Dimens.dp10,
      ),
      padding: const EdgeInsets.all(
        Dimens.dp10,
      ),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Radio<bool>(
            value: false,
            groupValue: !controller.addressesBloc.state.data[index].selected!,
            onChanged: (val) =>
                controller.onSelectAddress(address, val, context, index),
            activeColor: context.colors.primary,
          ),
          Gaps.hGap10,
          Flexible(
            child: Column(
              children: [
                BuildAddressItem(
                  title: "Address",
                  desc: address.address!,
                ),
                BuildAddressItem(
                  title: "Postal code",
                  desc: address.postalCode!,
                ),
                BuildAddressItem(
                  title: "City",
                  desc: address.city?.name ?? "",
                ),
                BuildAddressItem(
                  title: "State",
                  desc: address.state?.name ?? "",
                ),
                BuildAddressItem(
                  title: "Country",
                  desc: address.country?.name??"",
                ),
                BuildAddressItem(
                  title: "Phone",
                  desc: address.phone??"",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

