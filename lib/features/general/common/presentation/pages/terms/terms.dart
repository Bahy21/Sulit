part of 'terms_imports.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  late TermsController controller ;

  @override
  void initState() {
    controller = TermsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Terms and Conditions"),
      body: BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
        bloc: controller.termsCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10).r,
              child: Html(
                data: state.data,
                style: {
                  "body": Style(
                    color: Colors.black,
                    margin: Margins.zero,
                    fontSize: FontSize(
                      12,
                    ),
                    lineHeight: const LineHeight(2),
                    fontWeight: FontWeight.w400,
                  ),
                },
              ),
            );
          } else {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10).r,

              children: List.generate(
                100,
                    (index) => BuildShimmerItem(
                  borderRadius: BorderRadius.circular(3),
                  height: 5,
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
