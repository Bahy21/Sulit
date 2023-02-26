part of 'search_widgets_imports.dart';

class BuildCustomSuggestItem extends StatelessWidget {
  const BuildCustomSuggestItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BuildSuggestHeader(title: "Popular Suggestions"),
        ...List.generate(
          3,
          (index) => GestureDetector(
            onTap: () =>
                AutoRouter.of(context).push(const ProductDetailsRoute()),
            child: Row(
              children: [
                CachedImage(
                  url:
                      "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg",
                  height: 60.h,
                  width: 80.w,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "items items items items ",
                        style:
                            AppTextStyle.s15_w500(color: context.colors.black),
                      ),
                      Gaps.vGap5,
                      Text(
                        "100 د.إ",
                        style: AppTextStyle.s15_w700(
                            color: context.colors.primary),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
