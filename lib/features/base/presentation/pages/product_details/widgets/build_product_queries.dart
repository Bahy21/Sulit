part of'product_details_widgets_imports.dart';
class BuildProductQueries extends StatelessWidget {
  const BuildProductQueries({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Product Queries : ",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        GenericTextField(
          fieldTypes: FieldTypes.rich,
          max: 4,
          type: TextInputType.text,
          action: TextInputAction.done,
          validate: (value) {},
          hint: "Write your question here...",
          margin: const EdgeInsets.symmetric(vertical: 10).r,
        ),
        DefaultButton(
            title: "Submit",
            width: 120.w,
            height: 30.h,
            fontSize: 10,
            borderRadius: BorderRadius.circular(5).r,
            onTap: () {}),
        Gaps.line(context.colors.greyWhite, 30.h),

      ],
    );
  }
}
