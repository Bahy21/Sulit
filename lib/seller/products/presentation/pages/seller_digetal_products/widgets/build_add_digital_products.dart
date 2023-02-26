part of'seller_digetal_products_widgets_imports.dart';
class BuildAddDigitalProducts extends StatelessWidget {
  const BuildAddDigitalProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AutoRouter.of(context).push(const SellerAddProductRoute());

      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12).r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.blackOpacity,

            ),
            child: Icon(Icons.add,color: context.colors.white,size: 35.sp,),
          ),
          Gaps.vGap20,

          Text(
            "Add New Digital Products",
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
          Divider(color: context.colors.greyWhite,height: 20.h,)
        ],
      ),
    );
  }
}
