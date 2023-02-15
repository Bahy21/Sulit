part of 'product_details_widgets_imports.dart';

class BuildProductSwiper extends StatelessWidget {
  const BuildProductSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 160.spMin,
      child: Swiper(
        itemBuilder: (_, int index) {
          return const CachedImage(
            url:
                "https://cdn.shopify.com/s/files/1/0583/7737/1842/files/banner3.jpg?v=1629357208",
          );
        },
        itemCount: 3,
        pagination: const SwiperPagination(),
      ),
    );
  }
}
