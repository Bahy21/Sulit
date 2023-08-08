part of 'addresses_widgets_imports.dart';

class BuildAddressLoading extends StatelessWidget {
  const BuildAddressLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BuildAddNewAddressCardShimmer(),
        BuildListAddressShimmer(),
      ],
    );
  }
}
