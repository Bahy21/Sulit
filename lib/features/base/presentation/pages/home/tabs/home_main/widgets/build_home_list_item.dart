part of 'home_main_widgets_imports.dart';

class BuildHomeListItem extends StatelessWidget {
  const BuildHomeListItem({Key? key}) : super(key: key);

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
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  top: 20.r,
                  child: Container(
                    padding:
                        const EdgeInsetsDirectional.only(start: 5,top: 2,bottom: 2),
                    decoration: BoxDecoration(
                        color: context.colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: context.colors.greyWhite,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ],
                        borderRadius: const BorderRadiusDirectional.only(
                            topEnd: Radius.circular(40),
                            bottomEnd: Radius.circular(40))),
                    child: Row(
                      children: [
                        Text(
                          "OFF",
                          style: AppTextStyle.s10_w400(
                            color: context.colors.primary,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6).r,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colors.primary,
                            boxShadow: [
                              BoxShadow(
                                  color: context.colors.greyWhite,
                                  blurRadius: .5,
                                  spreadRadius: .5)
                            ],
                          ),
                          child: Text(
                            "20%",
                            style: AppTextStyle.s10_w400(
                              color: context.colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "AED -8.21",
                      style:
                          AppTextStyle.s10_bold(color: context.colors.primary),
                    ),
                    Gaps.hGap5,
                    Text(
                      "AED 1.79",
                      style: AppTextStyle.s10_bold(
                        color: context.colors.black,
                      ).copyWith(decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 16,
                  unratedColor: context.colors.disableGray,
                  itemPadding: const EdgeInsets.only(bottom: 5).r,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                Text(
                  "Olay",
                  style: AppTextStyle.s14_w800(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
