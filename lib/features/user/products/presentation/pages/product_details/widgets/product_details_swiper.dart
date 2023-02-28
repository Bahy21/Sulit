part of'product_details_widgets_imports.dart';
class BuildProductDetailsSwiper extends StatelessWidget {
  const BuildProductDetailsSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200.spMin,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return const CachedImage(
            fit: BoxFit.fill,
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
