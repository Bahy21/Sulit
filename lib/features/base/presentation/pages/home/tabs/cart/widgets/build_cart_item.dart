part of 'cart_widgets_imports.dart';

class BuildCartItem extends StatelessWidget {
  const BuildCartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: context.colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CachedImage(
                url:
                    "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg",
                height: 100.h,
                width: 100.w,
              ),
              Expanded(
                child: Text(
                  "Empty String Empty String Empty String Empty String Empty String Empty String ",
                  style: AppTextStyle.s15_w500(color: context.colors.black),
                  textAlign: TextAlign.center,
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
                style: AppTextStyle.s18_w400(color: context.colors.black),
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
          Gaps.line(context.colors.gray, 30)
        ],
      ),
    );
  }
}
