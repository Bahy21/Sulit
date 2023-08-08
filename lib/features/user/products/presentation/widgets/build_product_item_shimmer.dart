import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shemer.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';

class BuildProductItemShimmer extends StatelessWidget {
  const BuildProductItemShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius5PX,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                BuildShimmerView(
                  child: Container(color: context.colors.offWhite),
                ),
                PositionedDirectional(
                  end: 3,
                  child: Column(
                    children: [
                      BuildShimmerView(
                        child: BuildIconItem(
                          isWishList: true,
                          iconData: Icons.favorite_border,
                          onTap: () {},
                        ),
                      ),
                      BuildShimmerView(
                        child: BuildIconItem(
                          iconData: Icons.compare_arrows,
                          onTap: () {},
                          isWishList: false,
                        ),
                      ),
                      BuildShimmerView(
                        child: BuildIconItem(
                          iconData: Icons.shopping_cart,
                          onTap: () {},
                          isWishList: false,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: Dimens.paddingAll8PX,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const BuildShimmerView(
                      height: 10,
                      width: 50,
                    ),
                    Gaps.hGap5,
                    const BuildShimmerView(
                      height: 10,
                      width: 50,
                    ),
                  ],
                ),
                BuildShimmerView(
                  child: RatingBar.builder(
                    initialRating: 5,
                    ignoreGestures: true,
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
                ),
                const BuildShimmerView(
                  height: 10,
                  width: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
