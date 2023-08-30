part of 'product_details_widgets_imports.dart';

class BuildProductQueries extends StatelessWidget {
  final ProductDetailsController controller;

  const BuildProductQueries({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: controller.formKey,
        child: Container(
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
              GenericTextField(
                fieldTypes: FieldTypes.rich,
                max: 4,
                controller: controller.queryController,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: context.colors.background,
                validate: (value) => value?.validateEmpty(),
                hint: "Write your question here...",
                margin: Dimens.paddingVertical10PX,
              ),
              DefaultButton(
                title: "Submit",
                width: 120.w,
                height: 30.h,
                margin: Dimens.paddingHorizontal10PX,
                borderRadius: BorderRadius.circular(5).r,
                onTap: () => controller.sendQuery(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
