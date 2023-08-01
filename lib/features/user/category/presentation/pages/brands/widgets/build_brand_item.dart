part of 'brands_widgets_imports.dart';

class BuildBrandItem extends StatelessWidget {
  final BrandDomainModel brand;

  const BuildBrandItem({Key? key, required this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(
         BrandDetailsRoute(brandId: brand.id),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: CachedImage(
          fit: BoxFit.cover,
          haveRadius: true,
          borderRadius: BorderRadius.circular(5).r,
          url: brand.logo,
        ),
      ),
    );
  }
}
