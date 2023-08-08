part of 'addresses_widgets_imports.dart';
class BuildAddressesEmptyView extends StatelessWidget {
  const BuildAddressesEmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.4),
      child: Text(
        "You have no addresses !",
        style: AppTextStyle.s14_w600(
          color: context.colors.black,
        ),
      ),
    );
  }
}
