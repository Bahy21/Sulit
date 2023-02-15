part of'product_details_imports.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  ProductDetailsController productDetailsController=ProductDetailsController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const BuildCustomAppBar(),
        body: ListView(
          children: [
            BuildProductDetailsSwiper(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
              child: Column(

                children: [

                  const BuildSellerInfo(),
                  BuildProductInfo(productDetailsController: productDetailsController,),
                  const BuildProductButtons(),
                  const BuildProductDescription(),
                  const BuildTopSellingProducts(),
                  const  BuildRelatedProducts(),
                  const BuildProductQueries(),
                  BuildRelatedQuestions(productDetailsController: productDetailsController,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
