part of 'addresses_widgets_imports.dart';
class BuildAddNewAddressCardShimmer extends StatelessWidget {
  const BuildAddNewAddressCardShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:Dimens.dp20, vertical: Dimens.dp10),
      padding: const EdgeInsets.all(Dimens.dp15),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        border: Border.all(color: context.colors.greyWhite),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BuildShimmerItem(
            height: 7.5,
            width: 50,
          ),
          BuildShimmerItem(child: Icon(Icons.add_circle, color: context.colors.grey)),
        ],
      ),
    );
  }
}
