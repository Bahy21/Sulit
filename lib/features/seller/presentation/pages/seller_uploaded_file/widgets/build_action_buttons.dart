part of'seller_uploaded_file_widgets_imports.dart';
class BuildActionButtons extends StatelessWidget {
  const BuildActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericTextField(
          radius: BorderRadius.circular(7).r,
          contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal: 16).r,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.search,
          validate: (value) => value?.noValidate(),
          hint: "Search",
          hintColor: context.colors.disableGray,
          suffixIcon: Icon(Icons.search,color: context.colors.gray,),
        ),
        Gaps.vGap15,
        Row(
          children: [

            Expanded(
              flex: 3,
              child: GenericTextField(
                radius: BorderRadius.circular(7).r,
                contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal: 16).r,
                fieldTypes: FieldTypes.clickable,
                type: TextInputType.text,
                action: TextInputAction.search,
                validate: (value) => value?.noValidate(),
                hint: "Bulk Action",
                hintColor: context.colors.disableGray,
                suffixIcon: Icon(Icons.arrow_drop_down,color: context.colors.darkPurple,),
              ),
            ),
             Gaps.hGap32,

             Expanded(

                 child: InkWell(
                   onTap: (){
                     showModalBottomSheet(
                         shape:  RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(20).r,
                                 topRight: Radius.circular(20).r)),
                         context: context,
                         builder: (context) {
                           return const BuildSellerSortFile();
                         });
                   },
                   child: Row(
               children: [
                   Text(
                     "Sort",
                     style: AppTextStyle.s14_w400(color: context.colors.black),
                   ),
                   Icon(Icons.sort_outlined, size: 20,color: context.colors.darkPurple,),
               ],
             ),
                 )),
          ],
        ),
      ],
    );
  }
}
