part of  'product_details_widgets_imports.dart';

class BuildProductAttributes extends StatelessWidget {
  final ProductDetailsController productDetailsController;

  const BuildProductAttributes({super.key, required this.productDetailsController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Gaps.vGap10,
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: productDetailsController.isSelected,
          builder: (context, state) {
            return Wrap(
              children: List.generate(
                4,
                    (index) => InkWell(
                  onTap: () => productDetailsController.isSelected
                      .onUpdateData(index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 7)
                        .r,
                    margin: const EdgeInsetsDirectional.only(end: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).r,
                      border: Border.all(
                          color: state.data == index
                              ? context.colors.primary
                              : context.colors.disableGray),
                      color: context.colors.white,
                    ),
                    child: Text(
                      "Large",
                      style: AppTextStyle.s12_w400(
                        color: context.colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Gaps.line(context.colors.greyWhite, 20.h),
      ],
    );
  }
}
