part of'home_main_widgets_imports.dart';
class BuildTodayItem extends StatelessWidget {
  const BuildTodayItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10),
      width: 160.w,
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(7).r,
          border: Border.all(color: context.colors.greyWhite),
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                CachedImage(
                    fit: BoxFit.fill,
                    haveRadius: true,
                    borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(7).r,
                        topLeft: const Radius.circular(7).r),
                    url:
                    "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg"),
                PositionedDirectional(
                  top: 10.r,
                  start: 5.r,
                  child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 6).r,
                  decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: BorderRadius.circular(5).r
                  ),
                  child: Text(
                    "Hot",
                    style: AppTextStyle.s12_w400(
                      color: context.colors.white,
                    ),
                  ),
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10).r,
            child: Text(
              "AED 8.21",
              style: AppTextStyle.s16_w500(
                  color: context.colors.primary,),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
