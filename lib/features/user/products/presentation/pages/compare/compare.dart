part of 'compare_imports.dart';

class Compare extends StatefulWidget {
  const Compare({Key? key}) : super(key: key);

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  final CompareController controller = CompareController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Compare", showBack: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          child: Column(
            children: [
              const BuildResetButton(),
              Table(
                border: TableBorder.all(
                    color: context.colors.blackOpacity, width: 0),
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: BorderRadius.circular(10).r),
                    children:const  [
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
                    8,
                    (index) => TableRow(
                      decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: BorderRadius.circular(10).r),
                      children: [
                        const BuildPaddedText(
                          text: "olae",
                        ),
                        const BuildPaddedText(
                          isImage: true,
                        ),
                        const BuildPaddedText(
                          text: "200 AED",
                        ),
                        const BuildPaddedText(
                          text: "CCREA",
                        ),
                        const BuildPaddedText(
                          text: "Beauty",
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 1).r,
                          margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 3)
                              .r,
                          decoration: BoxDecoration(
                              color: context.colors.primary,
                              borderRadius: BorderRadius.circular(2).r),
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
            ],
          ),
        ));
  }
}
