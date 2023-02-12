part of'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget {
  const BuildHomeMainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:
      const EdgeInsets.symmetric(vertical: 22, horizontal: 16).r,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, color: context.colors.black),
            Image.asset(Res.suliitLogo, height: 30, width: 150),
            Icon(Icons.search, color: context.colors.black),
          ]),
    );
  }
}
