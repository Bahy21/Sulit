part of 'product_details_widgets_imports.dart';

class BuildProductQueries extends StatelessWidget {
  const BuildProductQueries({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: Dimens.paddingAll8PX,
        margin: Dimens.standardPadding,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Gaps.vGap10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Product Queries : ",
                  style: AppTextStyle.s15_w700(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            Gaps.vGap10,

            GenericTextField(
              fieldTypes: FieldTypes.rich,
              max: 4,
              type: TextInputType.text,
              action: TextInputAction.done,
              fillColor: context.colors.background,
              validate: (value) {},
              hint: "Write your question here...",
              margin: const EdgeInsets.symmetric(vertical: 10).r,
            ),
            DefaultButton(
              title: "Submit",
              width: 120.w,
              height: 30.h,
              borderRadius: BorderRadius.circular(5).r,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
