part of 'shipping_widgets_imports.dart';

class BuildShippingItem extends StatelessWidget {
  const BuildShippingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      padding: const EdgeInsets.all(Dimens.dp10),
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
          Radio(
            value: true,
            groupValue: false,
            onChanged: (val) {},
            activeColor: context.colors.primary,
          ),
          Gaps.hGap10,
          Expanded(
            child: Column(
              children: const [
                BuildAddressItem(
                    title: "Address",
                    desc: "Egypt Egypt Egypt Egypt Egypt Egypt"),
                BuildAddressItem(title: "Postal code", desc: "1323242342323"),
                BuildAddressItem(title: "City", desc: "Egypt"),
                BuildAddressItem(title: "State", desc: "Egypt"),
                BuildAddressItem(title: "Country", desc: "Egypt"),
                BuildAddressItem(title: "Phone", desc: "01234567890")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
