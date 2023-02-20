part of'seller_product_bulk_imports.dart';
class SellerProductBulk extends StatefulWidget {
  const SellerProductBulk({Key? key}) : super(key: key);

  @override
  State<SellerProductBulk> createState() => _SellerProductBulkState();
}

class _SellerProductBulkState extends State<SellerProductBulk> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DefaultAppBar(title: "Bulk Products Bulk", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            BuildExcelSheet(),
            BuildCategoryFile(),BuildUploadCv()
          ],
        ));
  }
}
