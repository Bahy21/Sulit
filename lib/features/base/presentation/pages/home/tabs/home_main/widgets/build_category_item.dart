part of'home_main_widgets_imports.dart';
class BuildCategoryItem extends StatelessWidget {
  final String title,image;
  const BuildCategoryItem({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 16).r,
        padding: const EdgeInsetsDirectional.only(start: 5,end: 15,),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                  color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
            ]),
        child: Row(
          children: [
            CachedImage(
              height: 50.r,
              width: 50.r,
              fit: BoxFit.cover,
              haveRadius: false,
              url: image,
            ),
            Gaps.hGap10,
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
            ),
            Icon(Icons.arrow_forward_ios,color: context.colors.blackOpacity,size: 10.sp,)
          ],
        ),
    );
  }
}
