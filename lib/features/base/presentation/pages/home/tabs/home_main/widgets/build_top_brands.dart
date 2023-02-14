part of'home_main_widgets_imports.dart';
class BuildTopBrands extends StatelessWidget {
  const BuildTopBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildHeaderTitle(title: "Top 10 Brands",btnText: "View All Brands"),
          Gaps.vGap10,
          ...List.generate(3, (index) => const BuildCategoriesItem(title: 'Netflix',image: "https://deadline.com/wp-content/uploads/2022/08/Netflix_Symbol_logo.jpg",))
        ],
      ),
    );
  }
}
