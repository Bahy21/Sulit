part of 'cart_widgets_imports.dart';

class BuildCartItem extends StatelessWidget {
  final CartController cartController;

  const BuildCartItem({super.key, required this.cartController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5).r,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              CachedImage(
                url:
                    "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg",
                height: 70.h,
                width: 80.w,
                fit: BoxFit.fill,
              ),
              Expanded(
                child: Text(
                  "Empty String Empty String Empty String Empty String Empty String ",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BuildPriceItem(title: "Price", price: "100"),
                BuildPriceItem(title: "Tax", price: "10"),
                BuildPriceItem(title: "Total", price: "110"),
              ],
            ),
          ),
          Row(
            children: [
              BuildCustomBounce(onTap: () {}, iconData: CupertinoIcons.add),
              Text(
                "1",
                style: AppTextStyle.s16_w400(color: context.colors.black),
              ),
              BuildCustomBounce(onTap: () {}, iconData: CupertinoIcons.minus),
              const Spacer(),
              BuildCustomBounce(
                onTap: () {},
                iconData: CupertinoIcons.delete,
                deleteIcon: true,
              ),
            ],
          ),
          Gaps.vGap10
        ],
      ),
    );
  }
}
