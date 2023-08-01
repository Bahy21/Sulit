part of 'brand_details_w_imports.dart';

class BuildBrandDetailsLoadingView extends StatelessWidget {
  const BuildBrandDetailsLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.r,
        mainAxisSpacing: 20.r,
      ),
      itemCount: 8,
      itemBuilder: (context, index) => const BuildProductItemShimmer(),
    );
  }
}
