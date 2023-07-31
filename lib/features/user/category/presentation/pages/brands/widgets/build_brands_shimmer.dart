part of 'brands_widgets_imports.dart';
class BuildBrandShimmer extends StatelessWidget {
  const BuildBrandShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.r,
        mainAxisSpacing: 20.r,
        childAspectRatio: 9 / 8,
      ),
      itemBuilder:(context, index) => Container(
        decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
            ]),
        child: CachedImage(
          fit: BoxFit.cover,
          haveRadius: true,
          borderRadius: BorderRadius.circular(5).r,
          url: "",
        ),
      ),
    );
  }
}
