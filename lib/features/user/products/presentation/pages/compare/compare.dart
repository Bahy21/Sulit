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
        appBar: const DefaultAppBar(title: "Compare", showBack: true),
        body: BlocBuilder<GenericBloc<List<ProductsTableData>>,
            GenericState<List<ProductsTableData>>>(
          bloc: controller.productsBloc,
          builder: (context, state) {
            return SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
              child: Column(
                children: [
                BuildResetButton(
                  isNotEmpty: state.data.isNotEmpty,
                ),
                Visibility(
                  visible: state.data.isNotEmpty,
                  replacement: Padding(
                    padding: EdgeInsets.only(top: 350.h),
                    child: Center(
                      child: Text(
                        'No compared items found.  ! ',
                        style: AppTextStyle.s12_w400(
                          color: context.colors.grey,
                        ),
                      ),
                    ),
                  ),
                  child: Table(
                    border: TableBorder.all(color: context.colors.blackOpacity, width: 0),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: BorderRadius.circular(10).r,
                        ),
                        children: const [
                          BuildPaddedText(
                            text: "Name",
                          ),
                          BuildPaddedText(
                            text: "Image",
                          ),
                          BuildPaddedText(
                            text: "Price",
                          ),
                          BuildPaddedText(
                            text: "Brand",
                          ),
                          BuildPaddedText(
                            text: "Category",
                          ),
                          BuildPaddedText(
                            text: "",
                          )
                        ],
                      ),
                      ...List.generate(
                        state.data.length,
                        (index) => TableRow(
                          decoration: BoxDecoration(
                              color: context.colors.white,
                              borderRadius: BorderRadius.circular(10).r),
                          children: [
                            BuildPaddedText(
                              text: state.data[index].name,
                            ),
                            BuildPaddedText(
                              image: state.data[index].image,
                            ),
                            BuildPaddedText(text: state.data[index].price),
                            BuildPaddedText(
                              text: state.data[index].brand,
                            ),
                            BuildPaddedText(
                              text: state.data[index].category,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 1,
                              ).r,
                              margin: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 3,
                              ).r,
                              decoration: BoxDecoration(
                                color: context.colors.primary,
                                borderRadius: BorderRadius.circular(2).r,
                              ),
                              child: Text(
                                "Add to card",
                                style: AppTextStyle.s9_w400(
                                  color: context.colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
