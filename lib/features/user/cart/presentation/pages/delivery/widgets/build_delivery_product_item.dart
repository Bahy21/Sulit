part of 'delivery_widgets_imports.dart';

class BuildDeliveryProductItem extends StatelessWidget {
  final CartItem cartItem ;
  const BuildDeliveryProductItem({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
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
            borderRadius: BorderRadius.circular(15.r),
            url: cartItem.thumbnailImage,
            height: 70.h,
            width: 80.w,
          ),
          Gaps.hGap12,
          Expanded(
            child: Text(
              cartItem.name,
              style: AppTextStyle.s14_w400(color: context.colors.black).copyWith(height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
