part of 'sale_details_imports.dart';

class SaleDetails extends StatefulWidget {
  const SaleDetails({Key? key}) : super(key: key);

  @override
  State<SaleDetails> createState() => _SaleDetailsState();
}

class _SaleDetailsState extends State<SaleDetails> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const DefaultAppBar(title: "Flash Sale",),
      body: ListView(
        children: const [
          BuildTimer(),

        ],
      )
    );
  }
}
