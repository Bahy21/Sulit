part of 'product_details_widgets_imports.dart';

class BuildSellerInfo extends StatelessWidget {
  const BuildSellerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Olaey",
          style: AppTextStyle.s20_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap15,
        Row(
          children: [
            RatingBar.builder(
              initialRating: 0,
              ignoreGestures: true,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 16.sp,
              unratedColor: context.colors.disableGray,
              itemPadding: const EdgeInsets.only(bottom: 5).r,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            Gaps.hGap10,
            Text(
              "(0 reviews)",
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
          ],
        ),
        Gaps.vGap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sold By :",
                  style: AppTextStyle.s12_w500(
                    color: context.colors.black,
                  ),
                ),
                Gaps.vGap5,
                Text(
                  "In House for beauty",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            DefaultButton(
                title: "Message Seller",
                width: 120.w,
                height: 25.h,
                fontSize: 10,
                borderRadius: BorderRadius.circular(5).r,
                onTap: () {}),
          ],
        ),
        Gaps.line(context.colors.greyWhite, 30.h),
      ],
    );
  }
}
