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
        decoration: CustomDecoration(),
        child: CachedImage(
          fit: BoxFit.contain,
          haveRadius: true,
          borderRadius: BorderRadius.circular(5).r,
          url: brand.logo,
        ),
      ),
    );
  }
}
