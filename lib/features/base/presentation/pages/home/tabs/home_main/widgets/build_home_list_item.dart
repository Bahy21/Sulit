part of'home_main_widgets_imports.dart';

class BuildHomeListItem extends StatelessWidget {
  const BuildHomeListItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10),
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(
            color: context.colors.blackOpacity),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: CachedImage(
                url:
                "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(8).r,
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "AED -8.21",
                      style: AppTextStyle.s10_bold(
                          color: context.colors.primary),
                    ),
                    Gaps.hGap5,
                    Text(
                      "AED 1.79",
                      style: AppTextStyle.s10_bold(
                        color: context.colors.black,
                      ).copyWith(
                          decoration:
                          TextDecoration.lineThrough),
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
                  unratedColor:
                  context.colors.disableGray,
                  itemPadding:
                  const EdgeInsets.only(bottom: 5)
                      .r,
                  itemBuilder: (context, _) =>
                  const Icon(
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
