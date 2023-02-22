part of 'seller_order_details_widgets_imports.dart';

class BuildAdditionalInfoItem extends StatelessWidget {
  const BuildAdditionalInfoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: const EdgeInsets.symmetric(horizontal: Dimens.dp5),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius5PX,
        border: Border.all(color: context.colors.greyWhite),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg",
            fit: BoxFit.contain,
            haveRadius: true,
            height: 50.h,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(Dimens.dp5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.dp5),
            child: Text(
              "String String empty",
              textAlign: TextAlign.center,
              style: AppTextStyle.s12_w400(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
