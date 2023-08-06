part of 'brand_details_imports.dart';

class BrandDetails extends StatefulWidget {
  final int brandId ;
  const BrandDetails({Key? key, required this.brandId}) : super(key: key);

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  late BrandDetailsController controller;

  @override
  void initState() {
    controller = BrandDetailsController(widget.brandId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildSearchAppBar(isHome: false),
      body: BlocBuilder<GenericBloc<List<Product>>,
          GenericState<List<Product>>>(
        bloc: controller.productsBloc,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Res.emptyCart, scale : 3),
                  ],
                ),
              ),
              child: GridView.builder(
                padding:  const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.r,
                  mainAxisSpacing: 20.r,
                ),
                itemCount: state.data.length,
                itemBuilder: (context, index) => BuildProductItem(
                  productModel: state.data[index],
                ),
              ),
            );
          }else {
           return const BuildBrandDetailsLoadingView();
          }
        },
      ),
    );
  }
}
