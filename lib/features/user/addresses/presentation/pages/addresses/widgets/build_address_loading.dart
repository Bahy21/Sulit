part of 'addresses_widgets_imports.dart';

class BuildAddressLoading extends StatelessWidget {
  const BuildAddressLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          BuildAddNewAddressCardShimmer(),
          BuildListAddressShimmer(),
        ],
      ),
    );
  }
}
