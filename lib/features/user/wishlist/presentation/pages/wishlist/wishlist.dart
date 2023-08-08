part of 'wishlist_imports.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  late WishlistController controller;

  @override
  void initState() {
    controller = WishlistController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "WishList",
        showBack: true,
      ),
      body:
          BlocBuilder<GenericBloc<List<Product>>, GenericState<List<Product>>>(
        bloc: controller.wishlistBloc,
        builder: (context, state) {
          return GridView(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ).r,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.r,
              mainAxisSpacing: 8.r,
              childAspectRatio: 8 / 10,
            ),
            children: List.generate(
              state.data.length,
              (index) => BuildProductItem(
                productModel: state.data[index],
                onRefresh: () => controller.getWishlist(),
              ),
            ),
          );
        },
      ),
    );
  }
}
