part of 'home_main_widgets_imports.dart';

class BuildHomeSwiper extends StatelessWidget {
  final List<SliderDomainModel> slider;

  const BuildHomeSwiper({super.key, required this.slider});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 160.spMin,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return CachedImage(url: slider[index].photo);
        },
        itemCount: slider.length,
        pagination: const SwiperPagination(),
        autoplay: false,
      ),
    );
  }
}
