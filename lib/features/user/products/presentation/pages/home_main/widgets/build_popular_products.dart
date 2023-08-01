part of 'home_main_widgets_imports.dart';

class BuildPopularProducts extends StatelessWidget {
  final List<PopularProductsDomainModel> mostPopularProducts;

  const BuildPopularProducts({super.key, required this.mostPopularProducts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildHeaderTitle(title: "Most Popular"),
          Gaps.vGap10,
          Flexible(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gaps.hGap16,
                  ...List.generate(
                    mostPopularProducts.length,
                    (index) {
                      return BuildPopularItem(
                        popularProductModel: mostPopularProducts[index],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
