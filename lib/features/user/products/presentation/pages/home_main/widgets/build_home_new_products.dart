part of'home_main_widgets_imports.dart';

class BuildHomeNewProducts extends StatelessWidget {
  const BuildHomeNewProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 250.spMin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildHeaderTitle(title: "New Products",),
          Gaps.vGap10,
          Flexible(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),

              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Gaps.hGap16,
                ...List.generate(
                  4,
                      (index) {
                    return const BuildHomeListItem();
                  },
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
