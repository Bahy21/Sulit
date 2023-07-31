part of 'home_main_widgets_imports.dart';

class BuildBrandItem extends StatelessWidget {
  final BrandModel brandModel;

  const BuildBrandItem({super.key, required this.brandModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          AutoRouter.of(context).push(CategoryDetailsRoute(title: brandModel.name)),
      child: Container(
        height: 60.h,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16).r,
        padding: const EdgeInsetsDirectional.only(
          start: 5,
          end: 15,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                  color: context.colors.greyWhite,
                  blurRadius: 1,
                  spreadRadius: 1)
            ]),
        child: Row(
          children: [
            CachedImage(
              height: 50.r,
              width: 50.r,
              fit: BoxFit.cover,
              haveRadius: false,
              url: brandModel.logo,
            ),
            Gaps.hGap10,
            Expanded(
              child: Text(
                brandModel.name,
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: context.colors.blackOpacity,
              size: 10.sp,
            )
          ],
        ),
      ),
    );
  }
}
