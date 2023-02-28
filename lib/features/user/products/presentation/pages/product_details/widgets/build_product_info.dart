part of 'product_details_widgets_imports.dart';

class BuildProductInfo extends StatelessWidget {
  final ProductDetailsController productDetailsController;

  const BuildProductInfo({Key? key, required this.productDetailsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price : ",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,
        Text(
          "13.00 AED",
          style: AppTextStyle.s18_w500(
            color: context.colors.primary,
          ),
        ),
        Gaps.line(context.colors.greyWhite, 30.h),
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: productDetailsController.isSelected,
          builder: (context, state) {
            return Wrap(
              children: List.generate(
                4,
                (index) => InkWell(
                  onTap: () =>
                      productDetailsController.isSelected.onUpdateData(index),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7)
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
                      style: AppTextStyle.s14_w400(
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
        Gaps.line(context.colors.greyWhite, 30.h),
        Text(
          "Color : ",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,
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
                    padding: const EdgeInsets.all(3).r,
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
        Gaps.line(context.colors.greyWhite, 30.h),
        Text(
          "Quantity : ",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,

        Row(
          children: [
            BuildCustomBounce(onTap: () {}, iconData: CupertinoIcons.minus),
            Text(
              "1",
              style: AppTextStyle.s16_w400(color: context.colors.black),
            ),
            BuildCustomBounce(onTap: () {}, iconData: CupertinoIcons.add),
            Gaps.hGap10,
            Text(
              "(10 Available)",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
          ],
        ),
        // Gaps.vGap10,
        Gaps.line(context.colors.greyWhite, 30.h),

        Text(
          "Total Price : ",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap10,
        Text(
          "13.00 AED",
          style: AppTextStyle.s18_w500(
            color: context.colors.primary,
          ),
        ),
        Gaps.vGap20,
      ],
    );
  }
}
