part of 'home_main_widgets_imports.dart';

class BuildPopularProducts extends StatelessWidget {
  const BuildPopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,

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
                    4,
                    (index) {
                      return const BuildPopularItem();
                    },
                  )
                ],
              ),
            ),
          ),
          // Gaps.vGap10,

        ],
      ),
    );
  }
}
