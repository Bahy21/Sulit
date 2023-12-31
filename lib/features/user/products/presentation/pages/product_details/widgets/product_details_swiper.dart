part of 'product_details_widgets_imports.dart';

class BuildProductDetailsSwiper extends StatelessWidget {
  final bool innerBoxIsScrolled;
  final Product productModel;
  final ProductDetailsController controller;

  const BuildProductDetailsSwiper(
      {super.key,
      required this.innerBoxIsScrolled,
      required this.productModel,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: innerBoxIsScrolled ? 0.5 : 0,
      forceElevated: true,
      pinned: true,
      floating: false,
      toolbarHeight: 60.h,
      stretch: true,
      expandedHeight: 350.spMin,
      automaticallyImplyLeading: false,
      backgroundColor: context.colors.white,
      centerTitle: true,
      title: AnimatedOpacity(
        opacity: innerBoxIsScrolled ? 1 : 0,
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 100),
        child: Text(
          productModel.name,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s14_w500(
            color: context.colors.black,
          ),
        ),
      ),
      actions: [
        BuildIconItem(
          iconData:
              productModel.isWishlist ? Icons.favorite : Icons.favorite_border,
          checkValue: productModel.isWishlist,
          onTap: () => getIt<ProductsHelper>().toggleFavourite(
            context: context,
            id: productModel.id,
            onRefresh: () => controller.onChangeFav(productModel),
          ),
          padding: Dimens.paddingAll8PX,
        ),
        BuildIconItem(
          iconData: Icons.compare_arrows,
          onTap: () => getIt<ProductsHelper>().addProductToCompare(productModel, context),
          padding: Dimens.paddingAll8PX,
        ),
      ],
      leading: BuildIconItem(
        iconData: Icons.west,
        onTap: () => AutoRouter.of(context).pop(),
        padding: Dimens.paddingAll8PX,
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Swiper(
          autoplay: false,
          itemCount: productModel.images.length,
          pagination: const SwiperPagination(),
          itemBuilder: (BuildContext context, int index) {
            return CachedImage(
              fit: BoxFit.fill,
              url: productModel.images[index],
              placeHolder: Center(
                child: Image.asset(
                  Res.emptyCart,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
