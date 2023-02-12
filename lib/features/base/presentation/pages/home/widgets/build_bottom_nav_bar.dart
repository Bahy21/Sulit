part of 'home_widgets_imports.dart';

class BuildBottomNavBar extends StatelessWidget {
  final HomeController controller;

  const BuildBottomNavBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
        bloc: controller.homeTabCubit,
        builder: (context, state) {
          return AnimatedBottomNavigationBar.builder(
            itemCount: 4,
            tabBuilder: (int index, bool isActive) {
              return BuildTabItem(
                controller: controller,
                index: index,
                isActive: isActive,
              );
            },
            backgroundColor: context.colors.white,
            splashColor: context.colors.primary,
            activeIndex: state.data,
            gapLocation: GapLocation.center,
            splashSpeedInMilliseconds: 300,
            leftCornerRadius: 5,
            rightCornerRadius: 5,
            height: 60,
            onTap: (index) => controller.animateTabsPages(index, context),
          );
        });
  }
}
