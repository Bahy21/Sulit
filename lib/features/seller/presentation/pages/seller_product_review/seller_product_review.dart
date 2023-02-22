part of'seller_product_review_imports.dart';
class SellerProductReview extends StatefulWidget {
  const SellerProductReview({Key? key}) : super(key: key);

  @override
  State<SellerProductReview> createState() => _SellerProductReviewState();
}

class _SellerProductReviewState extends State<SellerProductReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Product Review", showBack: true),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          itemBuilder: (context,index)=>const BuildReviewItem(),
          itemCount: 4,
        ));
  }
}
