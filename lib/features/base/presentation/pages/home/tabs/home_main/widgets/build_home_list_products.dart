part of'home_main_widgets_imports.dart';

class BuildHomeListProducts extends StatelessWidget {
  const BuildHomeListProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 250.spMin,
      child: SingleChildScrollView(
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
    );
  }
}
