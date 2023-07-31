part of 'home_main_widgets_imports.dart';

class BuildDeals extends StatelessWidget {
  const BuildDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: BuildDealsItem(title: "Flash Sale", onTap: () {}),
        ),
        Expanded(
          flex: 3,
          child: BuildDealsItem(title: "Deal of the day", onTap: () {}),
        ),
        Expanded(
          flex: 2,
          child: BuildDealsItem(title: "Coupons", onTap: () {}),
        ),
      ],
    );
  }
}
