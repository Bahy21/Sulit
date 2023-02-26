part of 'seller_dashboard_widgets_imports.dart';

class BuildTopProductItem extends StatelessWidget {
  const BuildTopProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      margin: const EdgeInsets.symmetric(horizontal: 10),
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
              alignment: Alignment.topRight,
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
                  "Dark Dark Dark Dark Dark DarkDark",
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
