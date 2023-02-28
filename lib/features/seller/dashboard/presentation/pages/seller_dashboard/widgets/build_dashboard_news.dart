part of 'seller_dashboard_widgets_imports.dart';

class BuildDashboardNews extends StatelessWidget {
  const BuildDashboardNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BuildDashboardItem(
          iconData: CupertinoIcons.cube_box,
          title: "Products",
          details: "24",
        ),
        BuildDashboardItem(
          iconData: CupertinoIcons.star,
          title: "Ratings",
          details: "0",
        ),
        BuildDashboardItem(
          iconData: CupertinoIcons.square_list,
          title: "Total Order",
          details: "0",
        ),
        BuildDashboardItem(
          iconData: Icons.insert_chart_outlined,
          title: "Total Sales",
          details: "${12} د.إ ",
        ),
      ],
    );
  }
}
