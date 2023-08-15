part of 'product_details_widgets_imports.dart';

class BuildRelatedQuestions extends StatelessWidget {
  final ProductDetailsController productDetailsController;

  const BuildRelatedQuestions(
      {Key? key, required this.productDetailsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 150.spMin,
        padding: Dimens.paddingAll8PX,
        margin: Dimens.paddingHorizontal15PX,
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius5PX,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: productDetailsController.questionsCubit,
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap10,

                Text(
                  "Other Questions : ",
                  style: AppTextStyle.s15_w700(
                    color: context.colors.black,
                  ),
                ),
                Gaps.vGap15,
                Flexible(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          4,
                              (index) {
                            return BuildQuestionItem();
                          },
                        )
                      ],
                    ),
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
