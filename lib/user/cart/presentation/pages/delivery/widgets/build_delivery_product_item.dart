part of 'delivery_widgets_imports.dart';

class BuildDeliveryProductItem extends StatelessWidget {
  const BuildDeliveryProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: Dimens.dp5, horizontal: Dimens.dp20),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        border: Border.all(
          color: context.colors.greyWhite,
        ),
      ),
      child: Row(
        children: [
          CachedImage(
            url: "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg",
            height: 70.h,
            width: 80.w,
          ),
          Expanded(
            child: Text(
              "Empty String Empty String Empty String Empty String Empty String ",
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
