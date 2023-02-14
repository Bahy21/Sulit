part of 'category_details_widgets_imports.dart';

class BuildCategoryDetailsItem extends StatelessWidget {
  const BuildCategoryDetailsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius5PX,
        border: Border.all(color: context.colors.greyWhite),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: CachedImage(
              url: "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg",
              fit: BoxFit.contain,
              haveRadius: true,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(Dimens.dp5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.dp10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${100} د.إ ",
                  style: AppTextStyle.s14_w800(color: context.colors.primary),
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
                  "Dark Dark Dark Dark Dark Dark",
                  style: AppTextStyle.s14_w800(
                    color: context.colors.black,
                  ).copyWith(overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
