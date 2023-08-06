part of 'home_main_imports.dart';

class HomeMain extends StatefulWidget {
  final HomeController homeController;

  const HomeMain({Key? key, required this.homeController}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  final HomeMainController controller = HomeMainController();

  @override
  void initState() {
    controller.getHome(context, refresh: false);
    controller.getHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: BuildSearchAppBar(homeController: widget.homeController),
          body: BlocBuilder<GenericBloc<HomeDomainModel?>,
              GenericState<HomeDomainModel?>>(
            bloc: controller.homeCubit,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return BuildHomeView(homeDomainModel: state.data!);
              } else {
                return const BuildLoadingHomeView();
              }
            },
          ),
        ),
      ),
    );
  }
}
