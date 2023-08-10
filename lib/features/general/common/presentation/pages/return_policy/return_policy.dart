part of'return_policy_import.dart';
class ReturnPolicy extends StatefulWidget {
  const ReturnPolicy({Key? key}) : super(key: key);

  @override
  State<ReturnPolicy> createState() => _ReturnPolicyState();
}

class _ReturnPolicyState extends State<ReturnPolicy> {
  late PrivacyController controller ;

  @override
  void initState() {
    controller = PrivacyController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Return Policy"),
      body:  BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
        bloc: controller.privacyBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return SingleChildScrollView(
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
                80,
                    (index) => BuildShimmerView(
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
