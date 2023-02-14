part of'brands_imports.dart';
class Brands extends StatefulWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "All Brands", showBack: true),
        body: GridView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.r,
              mainAxisSpacing: 20.r,
              childAspectRatio: 9 / 8),
          children: List.generate(11, (index) => const BuildBrandItem()),
        ),
    );
  }
}
