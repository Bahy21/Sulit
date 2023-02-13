part of'wishlist_imports.dart';
class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "WishList", showBack: true),
        body:GridView(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16).r,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.r,
              mainAxisSpacing: 8.r,
              childAspectRatio: 8 / 10),
          children: List.generate(
              11,
                  (index) => const BuildWishlistItem()),
        ),
    );
  }
}
