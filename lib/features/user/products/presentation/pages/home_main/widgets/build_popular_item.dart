part of 'home_main_widgets_imports.dart';

class BuildPopularItem extends StatelessWidget {
  const BuildPopularItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10),
      padding: Dimens.paddingVertical5PX,
      width: 160.w,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius5PX,
        border: Border.all(color: context.colors.greyWhite),
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(const ProductDetailsRoute()),
        child: Row(
          children: [
            CachedImage(
              height: 50.r,
              width: 50.r,
              fit: BoxFit.fill,
              haveRadius: false,
              url:
                  "https://deadline.com/wp-content/uploads/2022/08/Netflix_Symbol_logo.jpg",
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Netflix ',
                    style: AppTextStyle.s14_w500(color: context.colors.black),
                  ),
                  Gaps.vGap5,
                  Text(
                    '9 products ',
                    style: AppTextStyle.s14_w500(color: context.colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
