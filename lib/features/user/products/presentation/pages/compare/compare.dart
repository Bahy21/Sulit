part of 'compare_imports.dart';

class Compare extends StatefulWidget {
  const Compare({Key? key}) : super(key: key);

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  late CompareController controller;

  @override
  void initState() {
    controller = CompareController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Compare", showBack: true),
      body: BlocBuilder<GenericBloc<List<ProductsTableData>>,
          GenericState<List<ProductsTableData>>>(
        bloc: controller.productsBloc,
        builder: (context, state) {
          return SingleChildScrollView(
            padding: Dimens.standardPadding,
            child: Column(
              children: [
                BuildResetButton(isNotEmpty: state.data.isNotEmpty),
                BuildCompareTable(
                  controller: controller,
                  compareData: state.data,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
