part of 'brand_details_imports.dart';

class BrandDetails extends StatefulWidget {
  const BrandDetails({Key? key}) : super(key: key);

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildSearchAppBar(isHome: false),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.r,
          mainAxisSpacing: 20.r,
        ),
        itemCount: 5,
        itemBuilder: (context, index) => const BuildDiscountProductItem(),
      ),
    );
  }
}
