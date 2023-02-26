part of 'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget {
  final HomeController homeController;

  const BuildHomeMainAppBar({Key? key, required this.homeController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: homeController.visibleSearch,
      builder: (context, state) {
        return Visibility(
          visible: !state.data,
          replacement: GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.search,
            validate: (value) {},
            hint: "Search...",
            margin: const EdgeInsets.all(11).r,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10).r,
            suffixIcon: InkWell(
              onTap: () => homeController.visibleSearch.onUpdateData(false),
              child: Icon(
                Icons.close,
                color: context.colors.black,
              ),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: ()=>homeController.scaffoldKey.currentState!.openDrawer(),
                  child: Icon(
                  Icons.menu,
                  color: context.colors.black,
                ),),
                Image.asset(Res.suliitLogo, height: 30, width: 150),
                InkWell(
                  onTap: () => homeController.visibleSearch.onUpdateData(true),
                  child: Icon(
                    Icons.search,
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
