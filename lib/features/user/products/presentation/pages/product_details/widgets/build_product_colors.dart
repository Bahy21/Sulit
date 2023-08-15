part of  'product_details_widgets_imports.dart';

class BuildProductColors extends StatelessWidget {
  final ProductDetailsController productDetailsController;

  const BuildProductColors({super.key, required this.productDetailsController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: productDetailsController.selectedColorCubit,
          builder: (context, state) {
            return Wrap(
              children: List.generate(
                4,
                    (index) => InkWell(
                  onTap: () => productDetailsController.selectedColorCubit
                      .onUpdateData(index),
                  child: Container(
                    width: 40.r,
                    height: 40.r,
                    padding: const EdgeInsets.all(5).r,
                    margin: const EdgeInsetsDirectional.only(end: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: context.colors.greyWhite,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(5).r,
                      border: Border.all(
                          color: state.data == index
                              ? context.colors.primary
                              : context.colors.disableGray),
                      color: context.colors.white,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5).r,
                        color: context.colors.gray,
                      ),
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
