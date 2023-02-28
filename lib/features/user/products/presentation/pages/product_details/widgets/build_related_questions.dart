part of'product_details_widgets_imports.dart';

class BuildRelatedQuestions extends StatelessWidget {
  final ProductDetailsController productDetailsController;

  const BuildRelatedQuestions({Key? key, required this.productDetailsController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: productDetailsController.questionsCubit,
      builder: (context, state) {
        return Column(
          children: [
            InkWell(
              onTap: ()=>productDetailsController.questionsCubit.onUpdateData(!state.data),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Other Questions : ",
                    style: AppTextStyle.s16_w500(
                      color: context.colors.black,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down_sharp, color: context.colors.black,
                    size: 20.sp,)
                ],
              ),
            ),
            Gaps.vGap20,
            Visibility(
                visible: state.data,
                child: Column(
              children: List.generate(5, (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 5,).r,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).r,
                      color: context.colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
                      ]),
                  child: ListTile(
                    title: Text(
                      "Tarek fouda",
                      style: AppTextStyle.s14_w500(color: context.colors.black),
                    ),
                    subtitle: Text(
                      "my first question",
                      style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
                    ),
                    leading:  CachedImage(
                      height: 40.r,
                      width: 40.r,
                      fit: BoxFit.cover,
                      haveRadius: false,
                      boxShape: BoxShape.circle,
                      placeHolder: Image.asset(Res.profile,),

                      url: "",
                    ),
                    minLeadingWidth: 10.w,
                  )
              )),
            ))
          ],
        );
      },
    );
  }
}
